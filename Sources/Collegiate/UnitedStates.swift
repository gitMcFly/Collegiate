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
        case montanaUniversity
        case universityOfAlabama
        case universityOfCalifornia
        case universityOfNorthCarolina
        case universityOfIllinois
        case universityOfTennessee
        case universityOfTexas
        case universityOfSouthCarolina
        case universitySystemOfGeorgia
        case westVirginiaUniversity
        
    }
    
    public var body: Body {
        StateGroup(.alabama) {
            SystemGroup(.universityOfAlabama) {
                "University of Alabama"
                    .abbreviation("UA", "Bama", "ALA")
                    .city("Tuscaloosa")
                    .url(authority: "ua.edu")
                
                "University of Alabama at Birmingham"
                    .url(authority: "uab.edu")
                
                "University of Alabama in Huntsville"
                    .url(authority: "uah.edu")
                
            }
            
            "Auburn University"
                .city("Auburn")
                .url(authority: "auburn.edu")
            
            "Tuskegee University"
                .city("Tuskegee")
                .url(authority: "tuskegee.edu")
            
        }
        
        StateGroup(.alabama) {
            "Arizona State University"
                .city("Tempe")
                .url(authority: "asu.edu")
            
            "Southwest University of Visual Arts"
                .city("Tucson")
                .url(authority: "suva.edu")
            
        }
        
        StateGroup(.arkansas) {
            "Arkansas Northeastern College"
                .city("Blytheville")
                .url(authority: "anc.edu")
            
        }
        
        StateGroup(.california) {
            SystemGroup(.universityOfCalifornia) {
                "University of California, Berkeley"
                    .abbreviation("UC Berkeley", "Cal")
                    .url(authority: "berkeley.edu")
                
                "University of California, Davis"
                    .abbreviation("UC Davis", "UCD")
                    .url(authority: "ucdavis.edu")
                
                "University of California, Irvine"
                    .abbreviation("UCI", "UC Irvine")
                    .url(authority: "uci.edu")
                
                "University of California, Los Angeles"
                    .city("Los Angeles", neighborhood: "Westwood")
                    .url(authority: "ucla.edu")
                
                "University of California, Merced"
                    .abbreviation("UC Merced")
                    .url(authority: "ucmerced.edu")
                
                "University of California, Riverside"
                    .abbreviation("UCR", "UC Riverside")
                    .url(authority: "ucr.edu")
                
                "University of California, San Diego"
                    .abbreviation("UC San Diego", "UCSD")
                    .url(authority: "ucsd.edu")
                
                "University of California, San Francisco"
                    .url(authority: "ucsf.edu")
                
            }
            
            "Keck Graduate Institute"
                .city("Claremont")
                .url(authority: "kgi.edu")
            
            "Loyola Marymount University"
                .city("Los Angeles", neighborhood: "Westchester")
                .url(authority: "lmu.edu")
            
            "Santa Clara University"
                .city("Santa Clara")
                .url(authority: "scu.edu")
            
            "University of Southern California"
                .city("Los Angeles")
                .url(authority: "usc.edu")
            
        }
        
        StateGroup(.connecticut) {
            "Yale University"
                .abbreviation("Yale")
                .city("New Haven")
                .url(authority: "yale.edu")
            
        }
        
        StateGroup(.deleware) {
            "University of Delaware"
                .abbreviation("UD", "Delaware")
                .city("Newark")
                .url(authority: "udel.edu")
            
        }
        
        StateGroup(.florida) {
            "University of Central Florida"
                .city("Oviedo")
                .url(authority: "ucf.edu")
            
            "University of Florida"
                .abbreviation("UF", "UFL")
                .city("Gainesville")
                .url(authority: "ufl.edu")
            
            "Florida Atlantic University"
                .city("Boca Raton")
                .url(authority: "fau.edu")
            
            "Florida International University"
                .city("University Park")
                .url(authority: "fiu.edu")
            
        }
        
        StateGroup(.georgia) {
            SystemGroup(.universitySystemOfGeorgia) {
                "Georgia Institute of Technology"
                    .commonTitle("Georgia Tech")
                    .url(authority: "gatech.edu")
                
                "University of Georgia"
                    .city("Athens")
                    .abbreviation("UGA", "GEO")
                    .url(authority: "uga.edu")
                
                "University of North Georgia"
                    .city("Dahlonega")
                    .url(authority: "ung.edu")
                
                "Augusta University"
                    .city("Augusta")
                    .url(authority: "augusta.edu")
                
                "South Georgia State College"
                    .city("Douglas")
                    .url(authority: "sgsc.edu")
                
                "Albany State University"
                    .city("Albany")
                    .url(authority: "asurams.edu")
                
                "Skidaway Institute of Oceanography"
                    .city("Skidaway Island")
                    .abbreviation("SkIO")
                    .url(authority: "skio.uga.edu")
                
                "Abraham Baldwin Agricultural College"
                    .city("Tifton")
                    .url(authority: "abac.edu")
                
            }
            
            "Clayton State University"
                .city("Morrow")
                .url(authority: "clayton.edu")
            
            "Fort Valley State University"
                .city("Fort Valley")
                .url(authority: "fvsu.edu")
            
        }
        
        StateGroup(.illinois) {
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
                .system(System.universityOfIllinois)
            
        }
        
        StateGroup(.indiana) {
            "Indiana University, Bloomington"
                .abbreviation("IU")
                .url(authority: "indiana.edu")
            
        }
        
        StateGroup(.iowa) {
            "University of Iowa"
                .abbreviation("UI", "U of I", "UIowa", "Iowa")
                .city("Iowa City")
                .url(authority: "uiowa.edu")
            
        }
        
        StateGroup(.louisiana) {
            "Louisiana State University"
                .city("Baton Rouge")
                .url(authority: "lsu.edu")
            
        }
        
        StateGroup(.newHampshire) {
            "Franklin Pierce University"
                .city("Rindge")
                .abbreviation("FP", "FPU")
                .url(authority: "franklinpierce.edu")
            
        }
        
        StateGroup(.newMexico) {
            "University of New Mexico"
                .city("Albuquerque")
                .url(authority: "unm.edu")
            
            "New Mexico State University"
                .city("Las Cruces")
                .url(authority: "nmsu.edu")
            
        }
        
        StateGroup(.newYork) {
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
        
        StateGroup(.northCarolina) {
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
            
            SystemGroup(.universityOfNorthCarolina) {
                "University of North Carolina at Chapel Hill"
                    .abbreviation("UNC", "UNC-Chapel Hill", "North Carolina")
                    .url(authority: "unc.edu")
                
                "North Carolina Agriculture & Technical State University"
                    .commonTitle("North Carolina A&T State University")
                    .abbreviation("NC A&T")
                    .city("Greensboro")
                    .url(authority: "ncat.edu")
                
                "University of North Carolina, Asheville"
                    .url(authority: "unca.edu")
                
                "North Carolina Central University"
                    .city("Durham")
                    .url(authority: "nccu.edu")
                
                "University of North Carolina, Charlotte"
                    .url(authority: "uncc.edu")
                
                "University of North Carolina, Greensboro"
                    .url(authority: "uncg.edu")
                
                "University of North Carolina, Pembroke"
                    .url(authority: "uncp.edu")
                
                "University of North Carolina School of the Arts"
                    .city("Winston-Salem")
                    .url(authority: "uncsa.edu")
                
                "University of North Carolina, Wilmington"
                    .url(authority: "uncw.edu")
                
                "Western Carolina University"
                    .city("Cullowhee")
                    .url(authority: "wcu.edu")
                
                "Winston-Salem State University"
                    .city("Winston-Salem")
                    .url(authority: "wssu.edu")
                
            }
            
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
        
        StateGroup(.maryland) {
            "Johns Hopkins University"
                .city("Baltimore")
                .url(authority: "jhu.edu")
            
            "Maryland Institute College of Art"
                .city("Baltimore")
                .url(authority: "mica.edu")
            
        }
        
        StateGroup(.massachusetts) {
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
        
        StateGroup(.michigan) {
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
        
        StateGroup(.mississippi) {
            "The University of Mississippi"
                .abbreviation("Ole Miss", "Miss")
                .city("University")
                .url(authority: "olemiss.edu")
            
        }
        
        StateGroup(.montana) {
            SystemGroup(.montanaUniversity) {
                Group { // University of Montana
                    "University of Montana"
                        .abbreviation("UM", "UMT")
                        .city("Missoula")
                        .url(authority: "umt.edu")
                    
                    "Missoula College"
                        .city("Missoula")
                        .url(authority: "mc.umt.edu")
                    
                    "University of Montana Western"
                        .city("Dillon")
                        .url(authority: "umwestern.edu")
                    
                    "Highlands College of Montana Tech"
                        .city("Butte")
                        .url("https://www.mtech.edu/highlands/index.html")
                    
                    "Montana Technological University"
                        .city("Butte")
                        .url(authority: "mtech.edu")
                    
                    "Helena College"
                        .city("Helena")
                        .url(authority: "helenacollege.edu")
                    
                    "Bitterroot College"
                        .city("Hamilton")
                        .url("http://www.umt.edu/bitterroot-college/")
                    
                }
                
                Group { // Montana State
                    "Montana State University"
                        .city("Bozeman")
                        .newspaper(.msuExponent)
                        .url(authority: "montana.edu")
                    
                    "Gallatin College"
                        .city("Bozeman")
                        .url(authority: "gallatin.montana.edu")
                    
                    "Montana State University Billings"
                        .city("Billings")
                        .url(authority: "msubillings.edu")
                    
                    "City College at Montana State University Billings"
                        .city("Billings")
                        .url("https://www.msubillings.edu/citycollege/index.htm")
                                        
                    "Montana State University Northern"
                        .abbreviation("MSU Northern", "MSUN")
                        .city("Havre")
                        .url(authority: "msun.edu")
                    
                    "Great Falls College"
                        .city("Great Falls")
                        .url(authority: "gfcmsu.edu")
                    
                }
                
                Group { // community colleges
                    "Dawson Community College"
                        .city("Glendive")
                        .url(authority: "dawson.edu")
                    
                    "Flathead Valley Community College"
                        .city("Kalispell")
                        .url(authority: "fvcc.edu")
                    
                    "Miles Community College"
                        .city("Miles City")
                        .url(authority: "milescc.edu")
                    
                }
                                
                Group { // tribal institutions
                    "Aaniiih Nakoda College"
                        .city("Harlem")
                        .url(authority: "ancollege.edu")
                    
                    "Blackfeet Community College"
                        .abbreviation("BFCC")
                        .city("Browning")
                        .url(authority: "bfcc.edu")
                    
                    "Chief Dull Knife College"
                        .city("Lame Deer")
                        .url(authority: "cdkc.edu")
                    
                    "Fort Peck Community College"
                        .city("Poplar")
                        .url(authority: "fpcc.edu")
                    
                    "Little Big Horn College"
                        .city("Crow Agency")
                        .url(authority: "lbhc.edu")
                    
                    "Salish Kootenai College"
                        .city("Pablo")
                        .url(authority: "skc.edu")
                    
                    "Stone Child College"
                        .city("Box Elder")
                        .url(authority: "stonechild.edu")
                    
                }
                
                Group { // private institutions
                    "Carroll College"
                        .city("Helena")
                    
                    "University of Providence"
                        .city("Great Falls")
                    
                    "Rocky Mountain College"
                        .abbreviation("Rocky", "RMC")
                        .city("Billings")
                    
                }
                
            }
            
        }
        
        StateGroup(.ohio) {
            "John Carroll University"
                .city("University Heights")
                .url(authority: "jcu.edu")
            
            "Ohio State University"
                .abbreviation("OSU", "TOSU")
                .city("Columbus")
                .url(authority: "osu.edu")
            
        }
        
        StateGroup(.alabama) {
            "Oklahoma University"
                .city("Norman")
                .url(authority: "ou.edu")
            
        }
        
        StateGroup(.oregon) {
            "Eastern Oregon University"
                .city("La Grande")
                .url(authority: "eou.edu")
            
            "Oregon Health & Science University"
                .city("Portland")
                .abbreviation("OHSU")
                .url(authority: "ohsu.edu")
            
            "Oregon Institute of Technology"
                .commonTitle("Oregon Tech")
                .city("Klamath Falls")
                .url(authority: "oit.edu")
            
            "Portland State University"
                .city("Portland")
                .abbreviation("PSX", "PDX")
                .url(authority: "pdx.edu")
            
        }
        
        StateGroup(.pennsylvania) {
            "Carnegie Mellon University"
                .city("Pittsburgh")
                .url(authority: "cmu.edu")
            
            "Drexel University"
                .city("Philadelphia")
                .newspaper(.triangle)
                .url(authority: "drexel.edu")
            
            "University of Pennsylvania"
                .abbreviation("Penn", "UPenn")
                .city("Philadelphia")
                .url(authority: "upenn.edu")
            
            "Pennsylvania State University"
                .city("University Park")
                .url(authority: "psu.edu")
            
        }
        
        StateGroup(.southCarolina) {
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
                
                SystemGroup(.universityOfSouthCarolina) {
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
        
        StateGroup(.tennessee) {
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
            
            "Knoxville College"
                .city("Knoxville")
                .url(authority: "knoxvillecollege.edu")
            
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
            
            SystemGroup(.universityOfTennessee) {
                "University of Tennessee"
                    .abbreviation("UTK", "Tenn")
                    .city("Knoxville")
                    .newspaper(.dailyBeacon)
                    .url(authority: "utk.edu")
                
                "University of Tennessee at Chattanooga"
                    .url(authority: "utc.edu")
                
                "University of Tennessee Health Science Center"
                    .city("Memphis")
                    .url(authority: "uthsc.edu")
                
                "University of Tennessee at Martin"
                    .url(authority: "utm.edu")
                
                "University of Tennessee Space Institute"
                    .city("Tullahoma")
                    .url(authority: "utsi.edu")
                
            }
            
            "Union University"
                .city("Jackson")
                .url(authority: "uu.edu")
            
        }
        
        StateGroup(.texas) {
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
            
            SystemGroup(.universityOfTexas) {
                "University of Texas at Austin"
                    .abbreviation("UT Austin", "UT", "Texas")
                    .url(authority: "utexas.edu")
                
                "University of Texas at Arlington"
                    .url(authority: "uta.edu")
                
                "University of Texas at El Paso"
                    .url(authority: "utep.edu")
                
            }
            
        }
        
        StateGroup(.utah) {
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
        
        
        StateGroup(.virginia) {
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
        
        
        StateGroup(.washington) {
            "University of Washington"
                .city("Seattle")
                .url(authority: "washington.edu")
            
        }
        
        StateGroup(.westVirginia) {
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
                .url(authority: "www.bethanywv.edu")
            
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
                .url(authority: "fairmontstate.edu")
            
            "Future Generations University"
                .url(authority: "future.edu")
            
            "Glenville State College"
                .city("Glenville")
                .url(authority: "glenville.edu")
            
            "Huntington Junior College"
                .url(authority: "huntingtonjuniorcollege.edu", useHTTPS: false)
            
            "Marshall University"
                .url(authority: "marshall.edu")
            
            "Mountwest Community and Technical College"
                .url(authority: "mctc.edu")
            
            "New River Community and Technical College"
                .url(authority: "newriver.edu")
            
            "Ohio Valley University"
                .city("Parkersburg")
                .url(authority: "ovu.edu")
            
            "Pierpont Community and Technical College"
                .url(authority: "pierpont.edu")
            
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
                .url(authority: "wvncc.edu")
            
            "West Virginia School of Osteopathic Medicine"
            
            "West Virginia State University"
                .city("Institute")
                .url(authority: "wvstateu.edu")
            
            SystemGroup(.westVirginiaUniversity) {
                "West Virginia University"
                    .city("Morgantown")
                    .url(authority: "wvu.edu")
                
                "West Virginia University Institute of Technology"
                    .abbreviation("WVU Tech", "WVIT", "WVU Beckley", "West Virginia Tech")
                    .city("Beckley")
                    .url("https://www.wvu.edu/wvutech/")
                
                "WVU Potomac State College"
                    .city("Keyser")
                    .url(authority: "potomacstatecollege.edu")
                
            }
            
            "West Virginia University at Parkersburg"
                .url(authority: "wvup.edu")
            
            "West Virginia Wesleyan College"
                .city("Buckhannon")
                .url(authority: "wvwc.edu")
            
            "Wheeling University"
                .city("Wheeling")
                .url(authority: "wheeling.edu")
            
        }
        
        CityGroup("Washington, D.C.") {
            "George Washington University"
                .url(authority: "gwu.edu")
            
        }
        
    }
    
    public init() {
        
    }
    
}

internal typealias _USSystemGroup = SystemGroup<UnitedStates.System>

extension UnitedStates {
    internal typealias SystemGroup = _USSystemGroup
    
}

public extension UnitedStates.System {
    @UUIDResult var id: UUID {
        switch self {
        case .montanaUniversity:
            (237, 252, 70, 136, 191, 47, 71, 145, 184, 250, 70, 233, 20, 199, 219, 130)
            
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
            
        case .universityOfTexas:
            (233, 11, 227, 198, 95, 156, 76, 173, 136, 93, 88, 213, 146, 25, 16, 220)
            
        case .universitySystemOfGeorgia:
            (42, 250, 10, 52, 175, 77, 65, 99, 148, 114, 88, 164, 209, 142, 151, 29)
            
        case .westVirginiaUniversity:
            (31, 85, 152, 235, 251, 236, 77, 131, 189, 235, 180, 60, 238, 142, 119, 198)
            
        }
    }
    
}
