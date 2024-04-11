package project5;

@license(LGPL);

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.StandardHost;
import inet.node.inet.Router;
import inet.node.ethernet.Eth100M;
import inet.common.misc.ThruputMeteringChannel;

network Project5
{
    parameters:
        double edgeDatarate @unit(bps);
        double coreDatarate @unit(bps);
        @display("bgb=1358.64,621.1375");
    types:
        channel edgeline extends ThruputMeteringChannel
        {
            delay = 2ms;
            datarate = edgeDatarate;
            thruputDisplayFormat = "b B U";
        }
        channel coreline extends ThruputMeteringChannel
        {
            delay = 2ms;
            datarate = coreDatarate;
            thruputDisplayFormat = "b B U";
        }
    submodules:

        configurator: Ipv4NetworkConfigurator {
            @display("p=86.487495,69.189995");
        }
        H1: StandardHost {
            @display("p=85.125,250.26749");
            gates:
                ethg[1];
        }
        H2: StandardHost {
            @display("p=1235.985,389.97998");
            gates:
                ethg[1];
        }
        R1: Router {
            @display("p=194.08499,366.03748");
            gates:
                ethg[1];
        }
        R2: Router {
            @display("p=284.3175,146.415");
        }
        R3: Router {
            @display("p=335.3925,417.1125");
        }
        R4: Router {
            @display("p=456.27,199.19249");
        }
        R5: Router {
            @display("p=635.0325,330.285");
        }
        R6: Router {
            @display("p=505.6425,469.88998");
        }
        R7: Router {
            @display("p=812.09247,389.8725");
        }
        R8: Router {
            @display("p=812.09247,160.03499");
        }
        R9: Router {
            @display("p=992.5575,417.1125");
        }
        R10: Router {
            @display("p=993.82,147.815");
        }
        R11: Router {
            @display("p=1178.13,250.26749");
            gates:
                ethg[1];
        }
    connections:
        //Between hosts and routers
        H1.ethg[0] <--> Eth100M <--> R1.ethg[0];
        H2.ethg[0] <--> Eth100M <--> R11.ethg[0];
        //Between routers
        R1.pppg++ <--> edgeline <--> R2.pppg++;
        R1.pppg++ <--> edgeline <--> R3.pppg++;
        R2.pppg++ <--> coreline <--> R3.pppg++;
        R2.pppg++ <--> coreline <--> R4.pppg++;
        R3.pppg++ <--> coreline <--> R6.pppg++;
        R4.pppg++ <--> edgeline <--> R5.pppg++;
        R4.pppg++ <--> edgeline <--> R6.pppg++;
        R5.pppg++ <--> coreline <--> R6.pppg++;
        R5.pppg++ <--> coreline <--> R8.pppg++;
        R7.pppg++ <--> edgeline <--> R8.pppg++;
        R7.pppg++ <--> coreline <--> R9.pppg++;
        R8.pppg++ <--> coreline <--> R9.pppg++;
        R8.pppg++ <--> edgeline <--> R10.pppg++;
        R9.pppg++ <--> coreline <--> R10.pppg++;
        R9.pppg++ <--> coreline <--> R11.pppg++;
        R10.pppg++ <--> edgeline <--> R11.pppg++;

}

