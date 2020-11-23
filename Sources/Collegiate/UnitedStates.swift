//
//  UnitedStates.swift
//  
//
//  Created by Christopher Weems on 11/19/20.
//

import CollegeGroup
import Foundation
import unstandard

public struct UnitedStates: CollegeGroup {
    public enum System: UniversitySystem {
        case universityOfAlabama
        case universityOfCalifornia
        case universityOfNorthCarolina
        case universityOfIllinois
        case universityOfTennessee
        case universityOfSouthCarolina
        
    }
    
    public var body: Body {
        Group {
            Group {
                "University of Alabama"
                    .abbreviation("UA", "Bama", "ALA")
                    .city("Tuscaloosa")
                    .url(authority: "ua.edu")
                
                "University of Alabama at Birmingham"
                    .city("Birmingham")
                    .url(authority: "uab.edu")
                
            }
            .system(System.universityOfAlabama)
            
            "Auburn University"
                .city("Auburn")
                .url(authority: "auburn.edu")
            
        }
        .state(.alabama)
        
        Group {
            "Arizona State University"
                .city("Tempe")
                .url(authority: "asu.edu")
            
            "Southwest University of Visual Arts"
                .city("Tucson")
                .url(authority: "suva.edu")
            
        }
        .state(.arizona)
        
        Group {
            "Arkansas Northeastern College"
                .city("Blytheville")
                .url(authority: "anc.edu")
            
        }
        .state(.arkansas)
        
        Group {
            Group {
                "University of California, Berkeley"
                    .abbreviation("Cal", "UC Berkeley")
                    .city("Berkeley")
                    .url(authority: "berkeley.edu")
                
                "University of California, Los Angeles"
                    .city("Westwood, Los Angeles")
                    .url(authority: "ucla.edu")
                
                "University of California, San Francisco"
                    .city("San Francisco")
                    .url(authority: "ucsf.edu")
                
            }
            .system(System.universityOfCalifornia)
            
            "Keck Graduate Institute"
                .city("Claremont")
                .url(authority: "kgi.edu")
            
            "Loyola Marymount University"
                .city("Westchester, Los Angeles")
                .url(authority: "lmu.edu")
            
            "Santa Clara University"
                .city("Santa Clara")
                .url(authority: "scu.edu")
            
            "University of Southern California"
                .city("Los Angeles")
                .url(authority: "usc.edu")
            
        }
        .state(.california)
        
        Group {
            "Yale University"
                .abbreviation("Yale")
                .city("New Haven")
                .url(authority: "yale.edu")
            
        }
        .state(.connecticut)
        
        Group {
            "University of Delaware"
                .abbreviation("UD", "Delaware")
                .city("Newark")
                .url(authority: "udel.edu")
            
        }
        .state(.deleware)
        
        Group {
            "University of Central Florida"
                .city("Oviedo")
                .url(authority: "ucf.edu")
            
            "UF, UFL: University of Florida"
                .city("Gainesville")
                .url(authority: "ufl.edu")
            
            "Florida Atlantic University"
                .city("Boca Raton")
                .url(authority: "fau.edu")
            
            "Florida International University"
                .city("University Park")
                .url(authority: "fiu.edu")
            
        }
        .state(.florida)
        
        Group {
            "Albany State University"
                .city("Albany")
                .url(authority: "asurams.edu")
            
            "Clayton State University"
                .city("Morrow")
                .url(authority: "clayton.edu")
            
            "Fort Valley State University"
                .city("Fort Valley")
                .url(authority: "fvsu.edu")
            
            "University of Georgia"
                .city("Athens")
                .abbreviation("UGA", "GEO")
                .url(authority: "uga.edu")
            
        }
        .state(.georgia)
        
        Group {
            "Eastern Illinois University"
                .city("Charleston")
                .url(authority: "eiu.edu")
            
            "Northwestern University"
                .abbreviation("NU", "NW", "NWU")
                .city("Evanston")
                .url(authority: "northwestern.edu")
            
            "University of Chicago"
                .abbreviation("UChicago", "U of C", "Chicago")
                .city("Chicago")
                .url(authority: "uchicago.edu")
            
            "University of Chicago Booth School of Business"
                .abbreviation("Booth", "Chicago Booth")
                .city("Chicago")
                .url(authority: "chicagobooth.edu")
            
            "University of Illinois at Chicago"
                .url(authority: "uic.edu")
                .city("Chicago")
                .system(System.universityOfIllinois)
            
        }
        .state(.illinois)
        
        Group {
            "Indiana University, Bloomington"
                .abbreviation("IU")
                .city("Bloomington")
                .url(authority: "indiana.edu")
            
        }
        .state(.indiana)
        
        Group {
            "University of Iowa"
                .abbreviation("UI", "U of I", "UIowa", "Iowa")
                .city("Iowa City")
                .url(authority: "uiowa.edu")
            
        }
        .state(.iowa)
        
        Group {
            "Louisiana State University"
                .city("Baton Rouge")
                .url(authority: "lsu.edu")
            
        }
        .state(.louisiana)
        
        Group {
            "Franklin Pierce University"
                .city("Rindge")
                .abbreviation("FP", "FPU")
                .url(authority: "franklinpierce.edu")
            
        }
        .state(.newHampshire)
        
        Group {
            "University of New Mexico"
                .city("Albuquerque")
                .url(authority: "unm.edu")
            
            "New Mexico State University"
                .city("Las Cruces")
                .url(authority: "nmsu.edu")
            
        }
        .state(.newMexico)
        
        Group {
            "Iona College"
                .abbreviation("Iona")
                .city("New Rochelle")
                .url(authority: "iona.edu")
            
            "The New School"
                .city("New York City")
                .url(authority: "newschool.edu")
            
            "New York University"
                .city("New York City")
                .url(authority: "nyu.edu")
            
            "University of Rochester"
                .abbreviation("UR", "U of R", "U of Rochester")
                .city("Rochester")
                .url(authority: "rochester.edu")
            
        }
        .state(.newYork)
        
        Group {
            "Appalachian State University"
                .abbreviation("ASU", "App State", "App")
                .city("Boone")
                .url(authority: "appstate.edu")
            
            "Eastern Carolina University"
                .city("Greenville")
                .url(authority: "ecu.edu")
            
            "Elizabeth City State University"
                .city("Elizabeth City")
                .url(authority: "ecsu.edu")
            
            "Fayetteville State University"
                .city("Fayetteville")
                .url(authority: "uncfsu.edu")
            
            
            Group {
                "University of North Carolina at Chapel Hill"
                    .abbreviation("UNC", "UNC-Chapel Hill", "North Carolina")
                    .city("Chapel Hill")
                    .url(authority: "unc.edu")
                
                "North Carolina Agriculture & Technical State University"
                    .commonTitle("North Carolina A&T State University")
                    .abbreviation("NC A&T")
                    .city("Greensboro")
                    .url(authority: "ncat.edu")
                
                "University of North Carolina, Asheville"
                    .city("Asheville")
                    .url(authority: "unca.edu")
                
                "North Carolina Central University"
                    .city("Durham")
                    .url(authority: "nccu.edu")
                
                "University of North Carolina, Charlotte"
                    .city("Charlotte")
                    .url(authority: "uncc.edu")
                
                "University of North Carolina, Greensboro"
                    .city("Greensboro")
                    .url(authority: "uncg.edu")
                
                "University of North Carolina, Pembroke"
                    .city("Pembroke")
                    .url(authority: "uncp.edu")
                
                "University of North Carolina School of the Arts"
                    .city("Winston-Salem")
                    .url(authority: "uncsa.edu")
                
                "University of North Carolina, Wilmington"
                    .city("Wilmington")
                    .url(authority: "uncw.edu")
                
                "Western Carolina University"
                    .city("Cullowhee")
                    .url(authority: "wcu.edu")
                
                "Winston-Salem State University"
                    .city("Winston-Salem")
                    .url(authority: "wssu.edu")
                
            }
            .system(System.universityOfNorthCarolina)
            
            "North Carolina State University"
                .city("Raleigh")
                .url(authority: "ncsu.edu")
            
            "Mars Hill University"
                .city("Mars Hill")
                .url(authority: "mhu.edu")
            
            "Wake Forest University"
                .abbreviation("WFU", "WF")
                .city("Winston-Salem")
                .url(authority: "wfu.edu")
            
        }
        .state(.northCarolina)
        
        Group {
            "Johns Hopkins University"
                .city("Baltimore")
                .url(authority: "jhu.edu")
            
            "Maryland Institute College of Art"
                .city("Baltimore")
                .url(authority: "mica.edu")
            
        }
        .state(.maryland)
        
        Group {
            "Boston University"
                .city("Boston")
                .url(authority: "bu.edu", useHTTPS: false)
            
            "Boston University School of Medicine"
                .city("Boston")
                .url("https://www.bumc.bu.edu/busm/")
            
            "Massachusetts Institute of Technology"
                .city("Cambridge")
                .url(authority: "mit.edu")
            
        }
        .state(.massachusetts)
        
        Group {
            "University of Michigan"
                .abbreviation("UM", "U of M", "UMich")
                .city("Ann Arbor")
                .url(authority: "umich.edu")
            
            "Michigan State University"
                .city("East Lansing")
                .url(authority: "msu.edu")
            
            "Michigan Technological University"
                .city("Houghton")
                .url(authority: "mtu.edu")
            
        }
        .state(.michigan)
        
        Group {
            "University of Montana Western"
                .city("Dillon")
                .url(authority: "umwestern.edu")
            
        }
        .state(.montana)
        
        Group {
            "John Carroll University"
                .city("University Heights")
                .url(authority: "jcu.edu")
            
            "Ohio State University"
                .abbreviation("OSU", "TOSU")
                .city("Columbus")
                .url(authority: "osu.edu")
            
        }
        .state(.ohio)
        
        Group {
            "Oklahoma University"
                .city("Norman")
                .url(authority: "ou.edu")
            
        }
        .state(.oklahoma)
        
        Group {
            "Carnegie Mellon University"
                .city("Pittsburgh")
                .url(authority: "cmu.edu")
            
            "Drexel University"
                .city("Philadelphia")
                .url(authority: "drexel.edu")
            
            "University of Pennsylvania"
                .abbreviation("Penn", "UPenn")
                .city("Philadelphia")
                .url(authority: "upenn.edu")
            
            "Pennsylvania State University"
                .city("University Park")
                .url(authority: "psu.edu")
            
        }
        .state(.pennsylvania)
        
        Group { // south carolina
            
            Group { // public universities
                "Clemson University"
                    .city("Clemson")
                    .url(authority: "clemson.edu")
                
                "Coastal Carolina University"
                    .city("Conway")
                    .url(authority: "coastal.edu")
                
                "College of Charleston"
                    .abbreviation("CofC")
                    .city("Charleston")
                    .url(authority: "cofc.edu")
                
                "Francis Marion University"
                    .abbreviation("FM")
                    .city("Florence")
                    .url(authority: "fmarion.edu")
                
                "Lander University"
                    .city("Greenwood")
                    .url(authority: "lander.edu")
                
                "South Carolina State University"
                    .city("Orangeburg")
                    .url(authority: "scsu.edu")
                
                Group {
                    "University of South Carolina"
                        .city("Columbia")
                        .url(authority: "sc.edu")
                    
                    "University of South Carolina Aiken"
                        .city("Aiken")
                        .url(authority: "usca.edu")
                    
                    "University of South Carolina Beaufort"
                        .city("Beaufort")
                        .url(authority: "uscb.edu")
                    
                    "University of South Carolina Lancaster"
                        .city("Lancaster")
                        .url(authority: "usclancaster.sc.edu")
                    
                    "University of South Carolina Salkehatchie"
                        .city("Allendale")
                        .url(authority: "uscsalkehatchie.sc.edu")
                    
                    "University of South Carolina Sumter"
                        .city("Sumter")
                        .url("https://www.sc.edu/about/system_and_campuses/sumter/")
                    
                    "University of South Carolina Union"
                        .city("Union")
                        .url(authority: "uscunion.sc.edu")
                    
                    "University of South Carolina Upstate"
                        .city("Spartanburg")
                        .url(authority: "uscupstate.edu")
                    
                }
                .system(System.universityOfSouthCarolina)
                
                "Winthrop University"
                    .city("Rock Hill")
                    .url(authority: "winthrop.edu")
                
            }
            
            "Allen University"
                .city("Columbia")
                .url(authority: "allenuniversity.edu")
            
            "American College of the Building Arts"
                .city("Charleston")
                .url(authority: "acba.edu")
            
            "Anderson University"
            
            "Benedict College"
            
            "Bob Jones University"
            
            "Charleston Southern University"
            
            "Claflin University"
            
            "Columbia College"
            
            "Columbia International University"
            
            "Coker University"
            
            "Converse College"
            
            "Erskine College"
            
            "Furman University"
            
            "Limestone University"
            
            "Morris College"
            
            "Newberry College"
            
            "North Greenville University"
            
            "Presbyterian College"
            
            "Sherman College of Chiropractic"
            
            "Southern Wesleyan University"
            
            "Spartanburg Methodist College"
            
            "Voorhees College"
            
            "Wofford College"
            
            "The Military College of South Carolina"
                .city("Charleston")
                .abbreviation("The Citadel")
            
        }
        .state(.southCarolina)
        
        Group {
            "Austin Peay State University"
                .city("Clarksville")
                .url(authority: "apsu.edu")
            
            "Carson-Newman University"
                .city("Jefferson City")
                .abbreviation("CNU", "CN")
                .url(authority: "cn.edu")
            
            "Christian Brothers University"
                .city("Memphis")
                .url(authority: "cbu.edu")
            
            "East Tennessee State University"
                .city("Johnson City")
                .url(authority: "etsu.edu")
            
            "Freed-Hardeman University"
                .city("Henderson")
                .url(authority: "fhu.edu")
            
            "Johnson University"
                .city("Kimberlin Heights")
                .url(authority: "johnsonu.edu")
            
            "King University"
                .abbreviation("King")
                .city("Bristol")
                .url(authority: "king.edu")
            
            "Lincoln Memorial University"
                .city("Harrogate")
                .url(authority: "lmunet.edu")
            
            "University of Memphis"
                .abbreviation("U of M")
                .city("Memphis")
                .url(authority: "memphis.edu")
            
            "Middle Tennessee State University"
                .city("Murfreesboro")
                .url(authority: "mtsu.edu")
            
            "Southern Adventist University"
                .city("Collegedale")
                .url(authority: "southern.edu")
            
            "Tennessee State University"
                .city("Nashville")
                .url(authority: "tnstate.edu")
            
            "Tennessee Tech"
                .abbreviation("TTU")
                .city("Cookeville")
                .url(authority: "tntech.edu")
            
            "Tusculum University"
                .city("Tusculum")
                .url(authority: "tusculum.edu")
            
            Group {
                "University of Tennessee, Chattanooga"
                    .city("Chattanooga")
                    .url(authority: "utc.edu")
                
                "University of Tennessee, Knoxville"
                    .abbreviation("UTK", "Tenn")
                    .city("Knoxville")
                    .url(authority: "utk.edu")
                
                "University of Tennessee, Martin"
                    .city("Martin")
                    .url(authority: "utm.edu")
                
            }
            .system(System.universityOfTennessee)
            
            "Union University"
                .city("Jackson")
                .url(authority: "uu.edu")
            
        }
        .state(.tennessee)
        
        Group {
            "Abilene Christian University"
                .city("Abilene")
                .url(authority: "acu.edu")
            
            "Southern Methodist University"
                .city("University Park")
                .url(authority: "smu.edu")
            
            "Texas A&M University"
                .abbreviation("Texas A&M", "A&M")
                .city("College Station")
                .url(authority: "tamu.edu")
            
            "Texas Christian University"
                .city("Fort Worth")
                .url(authority: "tcu.edu")
            
            "Tyler Junior College"
                .city("Tyler")
                .url(authority: "tjc.edu")
            
            "University of Texas at Austin"
                .abbreviation("UT Austin", "UT", "Texas")
                .city("Austin")
                .url(authority: "utexas.edu")
            
            "University of Texas at El Paso"
                .city("El Paso")
                .url(authority: "utep.edu")
            
        }
        .state(.texas)
        
        Group {
            "Brigham Young University"
                .city("Provo")
                .url(authority: "byu.edu")
            
            "Utah State University"
                .city("Logan")
                .url(authority: "usu.edu")
            
            "Utah State University Eastern"
                .abbreviation("USU Eastern")
                .city("Price")
                .url(authority: "eastern.usu.edu")
            
        }
        .state(.utah)
        
        
        Group {
            "George Mason University"
                .abbreviation("Mason", "GMU")
                .city("Fairfax City")
                .url(authority: "gmu.edu")
            
            "University of Virginia"
                .abbreviation("UVA")
                .city("Charlottesville")
                .url(authority: "virginia.edu")
            
            "Virginia Commonwealth University"
                .city("Richmond")
                .url(authority: "vcu.edu")
            
            "Virginia Polytechnic Institute and State University"
                .commonTitle("Virginia Tech")
                .abbreviation("VT", "VPI")
                .city("Blacksburg")
                .url(authority: "vt.edu")
            
            "Virginia Union University"
                .city("Richmond")
                .url(authority: "vuu.edu")
            
            "Washington & Lee University"
                .abbreviation("W&L")
                .city("Lexington")
                .url(authority: "wlu.edu")
            
        }
        .state(.virginia)
        
        
        Group {
            "University of Washington"
                .city("Seattle")
                .url(authority: "washington.edu")
            
        }
        .state(.washington)
        
        Group {
            "Alderson Broaddus University"
                .abbreviation("AB")
                .city("Philippi")
                .url(authority: "ab.edu")
            
            /*
            "American Military University"
                .url(authority: "amu.apus.edu")
            */
            
            "Appalachian Bible College"
                .city("Mount Hope")
                .url(authority: "abc.edu")
            
            "Bethany College"
                .city("Bethany")
                .url(authority: "bethanywv.edu")
            
            "Bluefield State College"
                .city("Bluefield")
                .url(authority: "bluefieldstate.edu")
            
            "Blue Ridge Community and Technical College"
                .city("Martinsburg")
                .url(authority: "blueridgectc.edu")
            
            "BridgeValley Community and Technical College"
                .city("Charleston")
                .url(authority: "bridgevalley.edu")
            
            "University of Charleston"
                .city("Charleston")
                .url(authority: "www.ucwv.edu")
            
            "Concord University"
                .city("Athens")
                .url(authority: "concord.edu")
            
            "Davis & Elkins College"
                .abbreviation("D&E", "DEWV")
                .city("Elkins")
                .url(authority: "dewv.edu")
            
            "Eastern West Virginia Community and Technical College"
                .city("Moorefield")
                .url(authority: "easternwv.edu")
            
            "Fairmont State University"
            
            "Future Generations University"
            
            "Glenville State College"
                .city("Glenville")
                .url(authority: "glenville.edu")
            
            "Huntington Junior College"
            
            "Marshall University"
            
            "Mountwest Community and Technical College"
            
            "New River Community and Technical College"
            
            "Ohio Valley University"
                .city("Parkersburg")
                .url(authority: "ovu.edu")
            
            "Pierpont Community and Technical College"
            
            "Potomac State College of West Virginia University"
            
            "Salem University"
                .city("Salem")
                .url(authority: "salemu.edu")
            
            "Shepherd University"
            
            "Southern West Virginia Community and Technical College"
            
            "West Liberty University"
                .city("West Liberty")
                .url(authority: "westliberty.edu")
            
            "West Virginia Junior College"
                .city("Charleston")
                .url(authority: "wvjc.edu")
            
            "West Virginia Northern Community College"
                .city("Wheeling")
            
            "West Virginia School of Osteopathic Medicine"
            
            "West Virginia State University"
                .city("Institute")
                .url(authority: "wvstateu.edu")
            
            "West Virginia University"
                .city("Morgantown")
                .url(authority: "wvu.edu")
            
            "West Virginia University at Parkersburg"
                .city("Parkersburg")
                .url(authority: "wvup.edu")
            
            "West Virginia University Institute of Technology"
                .abbreviation("WVU Tech", "WVIT", "WVU Beckley", "West Virginia Tech")
                .city("Beckley")
                .url("https://www.wvu.edu/wvutech/")
            
            "West Virginia Wesleyan College"
                .city("Buckhannon")
                .url(authority: "wvwc.edu")
            
            "Wheeling University"
                .city("Wheeling")
                .url(authority: "wheeling.edu")
            
        }
        .state(.westVirginia)
        
        
        Group {
            "George Washington University"
                .url(authority: "gwu.edu")
            
        }
        .city("Washington, D.C.")
        
    }
    
    public init() {
        
    }
    
}

public extension UnitedStates.System {
    @SingleResult var title: String {
        switch self {
        case .universityOfAlabama:
            "University of Alabama"
            
        case .universityOfCalifornia:
            "University of California"
            
        case .universityOfNorthCarolina:
            "University of North Carolina"
            
        case .universityOfIllinois:
            "University of Illinois"
            
        case .universityOfSouthCarolina:
            "University of South Carolina"
            
        case .universityOfTennessee:
            "University of Tennessee"
            
        }
    }
    
    @UUIDResult var id: UUID {
        switch self {
        case .universityOfAlabama:
            (238, 250, 125, 159, 204, 249, 70, 91, 189, 81, 179, 78, 90, 225, 163, 58)
            
        case .universityOfCalifornia:
            (25, 243, 163, 73, 166, 241, 69, 120, 169, 13, 57, 97, 3, 80, 53, 173)
            
        case .universityOfNorthCarolina:
            (88, 110, 206, 166, 2, 53, 79, 30, 147, 1, 224, 203, 114, 153, 145, 128)
            
        case .universityOfIllinois:
            (21, 40, 74, 220, 229, 124, 64, 153, 132, 194, 57, 26, 234, 226, 189, 117)
            
        case .universityOfSouthCarolina:
            (71, 121, 134, 135, 160, 58, 76, 156, 186, 121, 73, 250, 3, 180, 106, 153)
            
        case .universityOfTennessee:
            (42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42)
            
        }
    }
    
}
