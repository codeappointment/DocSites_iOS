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
    
    Entity(id: 2, title: "BCPS", header: "Bangladesh College of Physicians and Surgeons", subheader: "Guidelines, pdf forms FCPS, MCPS Results", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Online Notice") , EntityChild(id: 3, title: "Exam fees"), EntityChild(id: 4, title: "Results by Roll Number"),EntityChild(id: 5, title: "Procedure of refund Exam fees") ]),
    
    Entity(id: 3, title: "DGHS", header: "স্বাস্থ্য অধিদপ্তর", subheader: "বদলি/পদায়ন, HRM, বুনিয়াদি প্রশিক্ষণ", items: [EntityChild(id: 1, title: "Home page"), EntityChild(id: 2, title: "Home Page Notices and Foundation Training orders"),EntityChild(id: 3, title: "বদলি/পদায়ন আদেশ") ,EntityChild(id: 4, title: "HRM")]),
    
    Entity(id: 4, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 5, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 6, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 7, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 8, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 9, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 10, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
    
    Entity(id: 11, title: "BSMMU", header: "বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়", subheader: "Residency, non-Residency, Notice", items: [EntityChild(id: 1, title: "Home page"),EntityChild(id: 2, title: "Residency/Non Residency") ,EntityChild(id: 3, title: "Admission and e-Registration") ,EntityChild(id: 4, title: "Academic notice") ,EntityChild(id: 5, title:  "Administrative notice"),EntityChild(id: 6, title: "Duration of different Residency courses"), EntityChild(id: 7, title: "Institutions with their courses") ]),
   
   

]
    
  


