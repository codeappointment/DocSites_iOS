//
//  Entity.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 15/4/21.
//

import Foundation

struct Entity: Identifiable {
    let id: Int
    let title: String
    let header: String
    let subheader: String
    let items: [EntityChild]
}

struct EntityChild: Identifiable {
    let id: Int
    let title: String
}


var entities = [
    Entity(id: 1, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 2, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 3, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 4, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 5, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 6, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 7, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 8, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 9, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 10, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 11, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
   
   

]
    
  


