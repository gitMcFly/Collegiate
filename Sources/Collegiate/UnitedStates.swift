//
//  UnitedStates.swift
//  
//
//  Created by Christopher Weems on 11/19/20.
//

import Foundation
import Statehood

public struct UnitedStates: CollegeGroup {
    public var body: Body {
        Group {
            "University of Alabama"
                .abbreviation("UA", "ALA", "Bama")
                .url(authority: "ua.edu")
            
            "University of Alabama at Birmingham"
                .url(authority: "uab.edu")
            
            "Auburn University"
                .url(authority: "auburn.edu")
            
        }
        .state(.alabama)
        
        Group {
            "Arizona State University"
                .url(authority: "asu.edu")
            
            "Southwest University of Visual Arts"
                .url(authority: "suva.edu")
            
        }
        .state(.arizona)
        
        Group {
            "Arkansas Northeastern College"
                .url(authority: "anc.edu")
            
        }
        .state(.arkansas)
        
        Group {
            "University of California, Berkeley"
                .abbreviation("Cal", "UC Berkeley")
                .url(authority: "berkeley.edu")
            
            "University of California, Los Angeles"
                .url(authority: "ucla.edu")
            
            "University of California, San Francisco"
                .url(authority: "ucsf.edu")
            
            "Keck Graduate Institute"
                .url(authority: "kgi.edu")
            
            "Loyola Marymount University"
                .url(authority: "lmu.edu")
            
            "Santa Clara University"
                .url(authority: "scu.edu")
            
            "University of Southern California"
                .url(authority: "usc.edu")
            
        }
        .state(.california)
        
        Group {
            "Yale University"
                .abbreviation("Yale")
                .url(authority: "yale.edu")
            
        }
        .state(.connecticut)
        
        Group {
            "University of Delaware"
                .abbreviation("UD", "Delaware")
                .url(authority: "udel.edu")
            
        }
        .state(.deleware)
        
        Group {
            "University of Central Florida"
                .url(authority: "ucf.edu")
            
            "UF, UFL: University of Florida"
                .url(authority: "ufl.edu")
            
            "Florida Atlantic University"
                .url(authority: "fau.edu")
            
            "Florida International University"
                .url(authority: "fiu.edu")
            
        }
        .state(.florida)
        
        Group {
            "Clayton State University"
                .url(authority: "clayton.edu")
            
            "Fort Valley State University"
                .url(authority: "fvsu.edu")
            
            "University of Georgia"
                .abbreviation("UGA", "GEO")
                .url(authority: "uga.edu")
            
        }
        .state(.georgia)
        
        Group {
            "Eastern Illinois University"
                .url(authority: "eiu.edu")
            
            "Northwestern University"
                .abbreviation("NU", "NW", "NWU")
                .url(authority: "northwestern.edu")
            
            "University of Chicago"
                .abbreviation("UChicago", "U of C", "Chicago")
                .url(authority: "uchicago.edu")
            
            "University of Chicago Booth School of Business"
                .abbreviation("Booth", "Chicago Booth")
                .url(authority: "chicagobooth.edu")
            
        }
        .state(.illinois)
        
        Group {
            "Indiana University, Bloomington"
                .abbreviation("IU")
                .url(authority: "indiana.edu")
            
        }
        .state(.indiana)
        
        Group {
            "University of Iowa"
                .abbreviation("UI", "U of I", "UIowa", "Iowa")
                .url(authority: "uiowa.edu")
            
        }
        .state(.iowa)
        
        Group {
            "Louisiana State University"
                .url(authority: "lsu.edu")
            
        }
        .state(.louisiana)
        
        Group {
            "Franklin Pierce University"
                .abbreviation("FP", "FPU")
                .url(authority: "franklinpierce.edu")
            
        }
        .state(.newHampshire)
        
        Group {
            "University of New Mexico"
                .url(authority: "unm.edu")
            
            "New Mexico State University"
                .url(authority: "nmsu.edu")
            
        }
        .state(.newMexico)
        
        Group {
            "Albany State University"
                .url(authority: "asurams.edu")
            
            "Iona College"
                .abbreviation("Iona")
                .url(authority: "iona.edu")
            
            "The New School"
                .url(authority: "newschool.edu")
            
            "New York University"
                .url(authority: "nyu.edu")
            
            "University of Rochester"
                .url(authority: "rochester.edu")
            
        }
        .state(.newYork)
        
        Group {
            "Appalachian State University"
                .abbreviation("App State", "App", "ASU")
                .url(authority: "appstate.edu")
            
            "Eastern Carolina University"
                .url(authority: "ecu.edu")
            
            "Elizabeth City State University"
                .url(authority: "ecsu.edu")
            
            "Fayetteville State University"
                .url(authority: "uncfsu.edu")
            
            "University of North Carolina"
                .url(authority: "unc.edu")
            
            "North Carolina Agriculture & Technical State University"
                .abbreviation("NC A&T")
                .url(authority: "ncat.edu")
            
            "University of North Carolina, Asheville"
                .url(authority: "unca.edu")
            
            "North Carolina Central University"
                .url(authority: "nccu.edu")
            
            "University of North Carolina, Charlotte"
                .url(authority: "uncc.edu")
            
            "University of North Carolina, Greensboro"
                .url(authority: "uncg.edu")
            
            "University of North Carolina, Pembroke"
                .url(authority: "uncp.edu")
            
            "University of North Carolina School of the Arts"
                .url(authority: "uncsa.edu")
            
            "University of North Carolina, Wilmington"
                .url(authority: "uncw.edu")
            
            "North Carolina State University"
                .url(authority: "ncsu.edu")
            
            "Mars Hill University"
                .url(authority: "mhu.edu")
            
            "Wake Forest University"
                .abbreviation("WFU", "WF")
                .url(authority: "wfu.edu")
            
            "Western Carolina University"
                .url(authority: "wcu.edu")
            
            "Winston-Salem State University"
                .url(authority: "wssu.edu")
            
        }
        .state(.northCarolina)
        
        Group {
            "Johns Hopkins University"
                .url(authority: "jhu.edu")
            
            "Maryland Institute College of Art"
                .url(authority: "mica.edu")
            
        }
        .state(.maryland)
        
        Group {
            "Boston University"
                .url(authority: "bu.edu", useHTTPS: false)
            
            "Boston University School of Medicine"
                .url("https://www.bumc.bu.edu/busm/")
            
            "Massachusetts Institute of Technology"
                .url(authority: "mit.edu")
            
        }
        .state(.massachusetts)
        
        Group {
            "University of Michigan"
                .url(authority: "umich.edu")
            
            "Michigan State University"
                .url(authority: "msu.edu")
            
            "Michigan Technological University"
                .url(authority: "mtu.edu")
            
        }
        .state(.michigan)
        
        Group {
            "University of Montana Western"
                .url(authority: "umwestern.edu")
            
        }
        .state(.montana)
        
        Group {
            "John Carroll University"
                .url(authority: "jcu.edu")
            
            "Ohio State University"
                .abbreviation("OSU", "TOSU")
                .url(authority: "osu.edu")
            
        }
        .state(.ohio)
        
        Group {
            "Oklahoma University"
                .url(authority: "ou.edu")
            
        }
        .state(.oklahoma)
        
        Group {
            "Carnegie Mellon University"
                .url(authority: "cmu.edu")
            
            "Drexel University"
                .url(authority: "drexel.edu")
            
            "University of Pennsylvania"
                .abbreviation("Penn", "UPenn")
                .url(authority: "upenn.edu")
            
            "Pennsylvania State University"
                .url(authority: "psu.edu")
            
        }
        .state(.pennsylvania)
        
        Group {
            "University of Charleston"
                .url(authority: "www.ucwv.edu")
            
        }
        .state(.southCarolina)
        
        Group {
            "Austin Peay State University"
                .url(authority: "apsu.edu")
            
            "Carson-Newman University"
                .abbreviation("CNU", "CN")
                .url(authority: "cn.edu")
            
            "Christian Brothers University"
                .url(authority: "cbu.edu")
            
            "East Tennessee State University"
                .url(authority: "etsu.edu")
            
            "Freed-Hardeman University"
                .url(authority: "fhu.edu")
            
            "Johnson University"
                .url(authority: "johnsonu.edu")
            
            "King University"
                .abbreviation("King")
                .url(authority: "king.edu")
            
            "Lincoln Memorial University"
                .url(authority: "lmunet.edu")
            
            "University of Memphis"
                .abbreviation("U of M")
                .url(authority: "memphis.edu")
            
            "Middle Tennessee State University"
                .url(authority: "mtsu.edu")
            
            "Southern Adventist University"
                .url(authority: "southern.edu")
            
            "Tennessee State University"
                .url(authority: "tnstate.edu")
            
            "Tennessee Tech"
                .abbreviation("TTU")
                .url(authority: "tntech.edu")
            
            "Tusculum University"
                .url(authority: "tusculum.edu")
            
            "University of Tennessee, Chattanooga"
                .url(authority: "utc.edu")
            
            "University of Tennessee, Knoxville"
                .abbreviation("UTK", "Tenn")
                .url(authority: "utk.edu")
            
            "University of Tennessee, Martin"
                .url(authority: "utm.edu")
            
            "Union University"
                .url(authority: "uu.edu")
            
        }
        .state(.tennessee)
        
        Group {
            "Abilene Christian University"
                .url(authority: "acu.edu")
            
            "Southern Methodist University"
                .url(authority: "smu.edu")
            
            "Texas A&M University"
                .abbreviation("Texas A&M", "A&M")
                .url(authority: "tamu.edu")
            
            "Texas Christian University"
                .url(authority: "tcu.edu")
            
            "Tyler Junior College"
                .url(authority: "tjc.edu")
            
            "University of Texas at Austin"
                .abbreviation("UT Austin", "UT", "Texas")
                .url(authority: "utexas.edu")
            
            "University of Texas at El Paso"
                .url(authority: "utep.edu")
            
        }
        .state(.texas)
        
        Group {
            "Brigham Young University"
                .url(authority: "byu.edu")
            
            "Utah State University"
                .url(authority: "usu.edu")
            
            "Utah State University Eastern"
                .abbreviation("USU Eastern")
                .url(authority: "eastern.usu.edu")
            
        }
        .state(.utah)
        
        
        Group {
            "George Mason University"
                .url(authority: "gmu.edu")
            
            "University of Virginia"
                .url(authority: "virginia.edu")
            
            "Virginia Commonwealth University"
                .url(authority: "vcu.edu")
            
            "Virginia Polytechnic Institute and State University"
                .abbreviation("Virginia Tech", "VT", "VPI")
                .url(authority: "vt.edu")
            
            "Virginia Union University"
                .url(authority: "vuu.edu")
            
            "Washington & Lee University"
                .abbreviation("W&L")
                .url(authority: "wlu.edu")
            
        }
        .state(.virginia)
        
        
        Group {
            "University of Washington"
                .url(authority: "washington.edu")
            
        }
        .state(.washington)
        
        Group {
            "Alderson Broaddus University"
                .abbreviation("AB")
                .url(authority: "ab.edu")
            
            "American Military University"
                .url(authority: "amu.apus.edu")
            
            "Bluefield State College"
                .url(authority: "bluefieldstate.edu")
            
            "Concord University"
                .url(authority: "concord.edu")
            
            "Davis & Elkins College"
                .abbreviation("D&E", "DEWV")
                .url(authority: "dewv.edu")
            
            "Glenville State College"
                .url(authority: "glenville.edu")
            
            "West Liberty University"
                .url(authority: "westliberty.edu")
            
            "West Virginia University"
                .url(authority: "wvu.edu")
            
            "West Virginia University at Parkersburg"
                .url(authority: "wvup.edu")
            
            "West Virginia University Institute of Technology"
                .abbreviation("WVU T", "WVIT", "WVU Beckley", "West Virginia Tech")
                .url("https://www.wvu.edu/wvutech/")
            
        }
        .state(.westVirginia)
        
        
        Group { // Washington, D.C.
            "George Washington University"
                .url(authority: "gwu.edu")
            
        }
        
    }
    
}
