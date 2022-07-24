
{}
  :configs $ {} (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |alerts.calcit/ |docs-workflow/
  :entries $ {}
  :ir $ {} (:package |docs-workflow)
    :files $ {}
      |app.config $ {}
        :defs $ {}
          |dev? $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |j $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:text |dev?) (:type :leaf)
              |r $ {} (:at 1624469709435) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |5 $ {} (:at 1624469715390) (:by |rJG4IHzWf) (:text |=) (:type :leaf)
                  |D $ {} (:at 1624469714304) (:by |rJG4IHzWf) (:text "|\"dev") (:type :leaf)
                  |T $ {} (:at 1624469701389) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1624469706777) (:by |rJG4IHzWf) (:text |get-env) (:type :leaf)
                      |T $ {} (:at 1624469708397) (:by |rJG4IHzWf) (:text "|\"mode") (:type :leaf)
                      |b $ {} (:at 1658657218485) (:by |rJG4IHzWf) (:text "|\"release") (:type :leaf)
          |site $ {} (:at 1545933382603) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1518157345496) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1518157327696) (:by |root) (:text |site) (:type :leaf)
              |r $ {} (:at 1518157327696) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1518157346643) (:by |root) (:text |{}) (:type :leaf)
                  |yf $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:text "|\"workflow") (:type :leaf)
        :ns $ {} (:at 1527788237503) (:by |root) (:type :expr)
          :data $ {}
            |T $ {} (:at 1527788237503) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1527788237503) (:by |root) (:text |app.config) (:type :leaf)
        :proc $ {} (:at 1527788237503) (:by |root) (:type :expr)
          :data $ {}
      |app.main $ {}
        :defs $ {}
          |*reel $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610792986987) (:by |rJG4IHzWf) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |*reel) (:type :leaf)
              |r $ {} (:at 1507399777531) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1507399778895) (:by |root) (:text |->) (:type :leaf)
                  |T $ {} (:at 1507399776350) (:by |root) (:text |reel-schema/reel) (:type :leaf)
                  |j $ {} (:at 1507399779656) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399781682) (:by |root) (:text |assoc) (:type :leaf)
                      |j $ {} (:at 1507401405076) (:by |root) (:text |:base) (:type :leaf)
                      |r $ {} (:at 1507399787471) (:by |root) (:text |schema/store) (:type :leaf)
                  |r $ {} (:at 1507399779656) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399781682) (:by |root) (:text |assoc) (:type :leaf)
                      |j $ {} (:at 1507399793097) (:by |root) (:text |:store) (:type :leaf)
                      |r $ {} (:at 1507399787471) (:by |root) (:text |schema/store) (:type :leaf)
          |dispatch! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op-data) (:type :leaf)
              |t $ {} (:at 1547437686766) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1547437687530) (:by |root) (:text |when) (:type :leaf)
                  |L $ {} (:at 1584874661674) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1584874662518) (:by |rJG4IHzWf) (:text |and) (:type :leaf)
                      |T $ {} (:at 1547437691006) (:by |root) (:text |config/dev?) (:type :leaf)
                      |j $ {} (:at 1584874663522) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584874664551) (:by |rJG4IHzWf) (:text |not=) (:type :leaf)
                          |j $ {} (:at 1584874665829) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                          |r $ {} (:at 1584874671745) (:by |rJG4IHzWf) (:text |:states) (:type :leaf)
                  |T $ {} (:at 1518156274050) (:by |root) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1518156276516) (:by |root) (:text |println) (:type :leaf)
                      |r $ {} (:at 1547437698992) (:by |root) (:text "|\"Dispatch:") (:type :leaf)
                      |v $ {} (:at 1518156280471) (:by |root) (:text |op) (:type :leaf)
              |v $ {} (:at 1584780634192) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1507399899641) (:by |root) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1507399884621) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399887573) (:by |root) (:text |reel-updater) (:type :leaf)
                      |j $ {} (:at 1507399888500) (:by |root) (:text |updater) (:type :leaf)
                      |r $ {} (:at 1507399891576) (:by |root) (:text |@*reel) (:type :leaf)
                      |v $ {} (:at 1507399892687) (:by |root) (:text |op) (:type :leaf)
                      |x $ {} (:at 1507399894594) (:by |root) (:text |op-data) (:type :leaf)
          |main! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |main!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
              |sj $ {} (:at 1648960476301) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1648960476301) (:by |rJG4IHzWf) (:text |register-languages!) (:type :leaf)
              |t $ {} (:at 1544874433785) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1544874434638) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                  |j $ {} (:at 1544874509800) (:by |rJG4IHzWf) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1544874440404) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544874440190) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                      |j $ {} (:at 1544874446442) (:by |rJG4IHzWf) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1544874449063) (:by |rJG4IHzWf) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1544874452316) (:by |rJG4IHzWf) (:text "|\"release") (:type :leaf)
              |v $ {} (:at 1636914348413) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636914349962) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |j $ {} (:at 1636914351563) (:by |rJG4IHzWf) (:text |config/dev?) (:type :leaf)
                  |r $ {} (:at 1636914352112) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636914358071) (:by |rJG4IHzWf) (:text |load-console-formatter!) (:type :leaf)
              |x $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
              |y $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1507399915531) (:by |root) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:by |root) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612280609284) (:by |rJG4IHzWf) (:text |reel) (:type :leaf)
                          |j $ {} (:at 1612280610651) (:by |rJG4IHzWf) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
              |yD $ {} (:at 1507461684494) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1507461739167) (:by |root) (:text |listen-devtools!) (:type :leaf)
                  |j $ {} (:at 1624007376825) (:by |rJG4IHzWf) (:text ||k) (:type :leaf)
                  |r $ {} (:at 1507461693919) (:by |root) (:text |dispatch!) (:type :leaf)
              |yL $ {} (:at 1518157357847) (:by |root) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1646150136497) (:by |rJG4IHzWf) (:text |js/window.addEventListener) (:type :leaf)
                  |r $ {} (:at 1518157458163) (:by |root) (:text ||beforeunload) (:type :leaf)
                  |v $ {} (:at 1612344221583) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1612344222530) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612344223520) (:by |rJG4IHzWf) (:text |event) (:type :leaf)
                      |T $ {} (:at 1612344224533) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |yO $ {} (:at 1646150039456) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1646150045747) (:by |rJG4IHzWf) (:text |flipped) (:type :leaf)
                  |T $ {} (:at 1646150042154) (:by |rJG4IHzWf) (:text |js/setInterval) (:type :leaf)
                  |b $ {} (:at 1646150175987) (:by |rJG4IHzWf) (:text |60000) (:type :leaf)
                  |h $ {} (:at 1646150050057) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |yP $ {} (:at 1518157492640) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1648634362331) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                  |T $ {} (:at 1518157495438) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1518157495644) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1518157495826) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157496930) (:by |root) (:text |raw) (:type :leaf)
                          |j $ {} (:at 1518157497615) (:by |root) (:type :expr)
                            :data $ {}
                              |j $ {} (:at 1646150065132) (:by |rJG4IHzWf) (:text |js/localStorage.getItem) (:type :leaf)
                              |r $ {} (:at 1518157506313) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1544956709260) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                                  |j $ {} (:at 1527788293499) (:by |root) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1518157514334) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1533919640958) (:by |rJG4IHzWf) (:text |when) (:type :leaf)
                      |j $ {} (:at 1518157515117) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157515786) (:by |root) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1518157516878) (:by |root) (:text |raw) (:type :leaf)
                      |r $ {} (:at 1518157521635) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157523818) (:by |root) (:text |dispatch!) (:type :leaf)
                          |j $ {} (:at 1518157669936) (:by |root) (:text |:hydrate-storage) (:type :leaf)
                          |r $ {} (:at 1518157527987) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624469412598) (:by |rJG4IHzWf) (:text |parse-cirru-edn) (:type :leaf)
                              |j $ {} (:at 1518157531240) (:by |root) (:text |raw) (:type :leaf)
              |yT $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |println) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text "||App started.") (:type :leaf)
          |mount-target $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |mount-target) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1624469553191) (:by |rJG4IHzWf) (:text |.!querySelector) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |js/document) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:by |root) (:text ||.app) (:type :leaf)
          |persist-storage! $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |n $ {} (:at 1646150052705) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |r $ {} (:at 1646150152124) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646150154932) (:by |rJG4IHzWf) (:text |js/console.log) (:type :leaf)
                  |b $ {} (:at 1646150157857) (:by |rJG4IHzWf) (:text "|\"persist") (:type :leaf)
              |v $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1646150150852) (:by |rJG4IHzWf) (:text |js/localStorage.setItem) (:type :leaf)
                  |r $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544956703087) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site) (:type :leaf)
                  |v $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1624469402829) (:by |rJG4IHzWf) (:text |format-cirru-edn) (:type :leaf)
                      |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store) (:type :leaf)
                          |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel) (:type :leaf)
          |reload! $ {} (:at 1626201152815) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |D $ {} (:at 1626201153853) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |L $ {} (:at 1626201157449) (:by |rJG4IHzWf) (:text |reload!) (:type :leaf)
              |P $ {} (:at 1626201163076) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |T $ {} (:at 1626201191606) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1626201192115) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |L $ {} (:at 1626201192626) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626201534497) (:by |rJG4IHzWf) (:text |nil?) (:type :leaf)
                      |j $ {} (:at 1626201194806) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
                  |T $ {} (:at 1626201164538) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626201161775) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                      |j $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:text |remove-watch) (:type :leaf)
                          |j $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:text |:changes) (:type :leaf)
                      |r $ {} (:at 1507461699387) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507461702453) (:by |root) (:text |clear-cache!) (:type :leaf)
                      |v $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |add-watch) (:type :leaf)
                          |j $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |:changes) (:type :leaf)
                          |v $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |reel) (:type :leaf)
                                  |j $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |prev) (:type :leaf)
                              |r $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
                      |x $ {} (:at 1507461704162) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507461706990) (:by |root) (:text |reset!) (:type :leaf)
                          |j $ {} (:at 1507461708965) (:by |root) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1507461710020) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507461730190) (:by |root) (:text |refresh-reel) (:type :leaf)
                              |j $ {} (:at 1507461719097) (:by |root) (:text |@*reel) (:type :leaf)
                              |r $ {} (:at 1507461721870) (:by |root) (:text |schema/store) (:type :leaf)
                              |v $ {} (:at 1507461722724) (:by |root) (:text |updater) (:type :leaf)
                      |y $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                          |j $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"ok~") (:type :leaf)
                          |r $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"Ok") (:type :leaf)
                  |j $ {} (:at 1626201203433) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626290831868) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                      |b $ {} (:at 1626290930377) (:by |rJG4IHzWf) (:text "|\"error") (:type :leaf)
                      |j $ {} (:at 1626201209903) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
          |render-app! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
              |v $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1624469436438) (:by |rJG4IHzWf) (:text |render!) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |mount-target) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1507400119272) (:by |root) (:text |@*reel) (:type :leaf)
                      |n $ {} (:at 1648585564758) (:by |rJG4IHzWf) (:text |schema/docs) (:type :leaf)
                  |v $ {} (:at 1623915174985) (:by |rJG4IHzWf) (:text |dispatch!) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.main) (:type :leaf)
            |r $ {} (:at 1499755354983) (:type :expr)
              :data $ {}
                |T $ {} (:at 1499755354983) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1499755354983) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |render!) (:type :leaf)
                        |r $ {} (:at 1499755354983) (:by |root) (:text |clear-cache!) (:type :leaf)
                |v $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1648704877144) (:by |rJG4IHzWf) (:text |docs-workflow.comp.container) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |comp-container) (:type :leaf)
                |y $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1508556737455) (:by |root) (:text |app.updater) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |updater) (:type :leaf)
                |yT $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1499755354983) (:by |root) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:by |root) (:text |schema) (:type :leaf)
                |yj $ {} (:at 1507399674125) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399678694) (:by |root) (:text |reel.util) (:type :leaf)
                    |r $ {} (:at 1507399680625) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507399680857) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1518156292092) (:by |root) (:text |listen-devtools!) (:type :leaf)
                |yr $ {} (:at 1507399683930) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399687162) (:by |root) (:text |reel.core) (:type :leaf)
                    |r $ {} (:at 1507399688098) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507399688322) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1507399691010) (:by |root) (:text |reel-updater) (:type :leaf)
                        |q $ {} (:at 1518156288482) (:by |root) (:text |refresh-reel) (:type :leaf)
                |yv $ {} (:at 1507399715229) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399717674) (:by |root) (:text |reel.schema) (:type :leaf)
                    |r $ {} (:at 1507399755750) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1507399757678) (:by |root) (:text |reel-schema) (:type :leaf)
                |yy $ {} (:at 1527788302920) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1527788304925) (:by |root) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1527788306048) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788306884) (:by |root) (:text |config) (:type :leaf)
                |yyT $ {} (:at 1626201173819) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1626201180939) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors") (:type :leaf)
                    |j $ {} (:at 1626201183958) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1626201187310) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
                |yyj $ {} (:at 1626290808117) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1626290810913) (:by |rJG4IHzWf) (:text "|\"bottom-tip") (:type :leaf)
                    |j $ {} (:at 1626290816153) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1626290825711) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                |yz $ {} (:at 1648960484486) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1648960484486) (:by |rJG4IHzWf) (:text |docs-workflow.config) (:type :leaf)
                    |b $ {} (:at 1648960484486) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1648960484486) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1648960484486) (:by |rJG4IHzWf) (:text |register-languages!) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
      |app.schema $ {}
        :defs $ {}
          |docs $ {} (:at 1646491858255) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1646491860967) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |b $ {} (:at 1646491858255) (:by |rJG4IHzWf) (:text |docs) (:type :leaf)
              |h $ {} (:at 1646491858255) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646491862770) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                  |X $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648808161000) (:by |rJG4IHzWf) (:text "|\"Home") (:type :leaf)
                      |h $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648808163311) (:by |rJG4IHzWf) (:text |:home) (:type :leaf)
                      |l $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648808165228) (:by |rJG4IHzWf) (:text "|\"home.md") (:type :leaf)
                      |o $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                  |e $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648808211903) (:by |rJG4IHzWf) (:text "|\"Beginner Guide") (:type :leaf)
                      |h $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648808215978) (:by |rJG4IHzWf) (:text |:beginner-guide) (:type :leaf)
                      |l $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648808217349) (:by |rJG4IHzWf) (:text "|\"beginner-guide.md") (:type :leaf)
                      |o $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                  |j $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648808224891) (:by |rJG4IHzWf) (:text "|\"Guide") (:type :leaf)
                      |h $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648808229943) (:by |rJG4IHzWf) (:text |:guide) (:type :leaf)
                      |l $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648808231311) (:by |rJG4IHzWf) (:text "|\"guide.md") (:type :leaf)
                      |o $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808244009) (:by |rJG4IHzWf) (:text "|\"Why Respo") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808282588) (:by |rJG4IHzWf) (:text |:why-respo) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808248723) (:by |rJG4IHzWf) (:text "|\"guide/why-respo.md") (:type :leaf)
                              |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808264877) (:by |rJG4IHzWf) (:text "|\"Pros and Cons") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808318595) (:by |rJG4IHzWf) (:text |:pros-and-cons) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808272513) (:by |rJG4IHzWf) (:text "|\"guide/pros-and-cons.md") (:type :leaf)
                              |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808326392) (:by |rJG4IHzWf) (:text "|\"DOM Elements") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808334091) (:by |rJG4IHzWf) (:text |:dom-elements) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808337377) (:by |rJG4IHzWf) (:text "|\"guide/dom-elements.md") (:type :leaf)
                              |o $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808343517) (:by |rJG4IHzWf) (:text "|\"DOM Properties") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808348759) (:by |rJG4IHzWf) (:text |:dom-properties) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808352114) (:by |rJG4IHzWf) (:text "|\"guide/dom-properties.md") (:type :leaf)
                              |q $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808360541) (:by |rJG4IHzWf) (:text "|\"DOM Events") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808365212) (:by |rJG4IHzWf) (:text |:dom-events) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808368071) (:by |rJG4IHzWf) (:text "|\"guide/dom-events.md") (:type :leaf)
                              |s $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808374120) (:by |rJG4IHzWf) (:text "|\"Styles") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808379597) (:by |rJG4IHzWf) (:text |:styles) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808383314) (:by |rJG4IHzWf) (:text "|\"guide/styles.md") (:type :leaf)
                              |t $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808390558) (:by |rJG4IHzWf) (:text "|\"Virtual DOM") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808394640) (:by |rJG4IHzWf) (:text |:virtual-dom) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808395989) (:by |rJG4IHzWf) (:text "|\"guide/virtual-dom.md") (:type :leaf)
                              |u $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808403364) (:by |rJG4IHzWf) (:text "|\"Define Effect") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808407966) (:by |rJG4IHzWf) (:text |:defeffect) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808839391) (:by |rJG4IHzWf) (:text "|\"apis/defeffect.md") (:type :leaf)
                              |v $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808419029) (:by |rJG4IHzWf) (:text "|\"List Rendering") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808423513) (:by |rJG4IHzWf) (:text |:render-list) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808425714) (:by |rJG4IHzWf) (:text "|\"guide/render-list.md") (:type :leaf)
                              |w $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808432717) (:by |rJG4IHzWf) (:text "|\"Component States") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808438269) (:by |rJG4IHzWf) (:text |:component-states) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808441148) (:by |rJG4IHzWf) (:text "|\"guide/component-states.md") (:type :leaf)
                              |x $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808453774) (:by |rJG4IHzWf) (:text "|\"Hot Swapping") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808459887) (:by |rJG4IHzWf) (:text |:hot-swapping) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808462851) (:by |rJG4IHzWf) (:text "|\"guide/hot-swapping.md") (:type :leaf)
                              |y $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808470056) (:by |rJG4IHzWf) (:text "|\"Base Components") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808474511) (:by |rJG4IHzWf) (:text |:base-components) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808477209) (:by |rJG4IHzWf) (:text "|\"guide/base-components.md") (:type :leaf)
                              |z $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808484917) (:by |rJG4IHzWf) (:text "|\"Server Rendering") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808490273) (:by |rJG4IHzWf) (:text |:server-rendering) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808493865) (:by |rJG4IHzWf) (:text "|\"guide/server-rendering.md") (:type :leaf)
                              |zD $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808544146) (:by |rJG4IHzWf) (:text "|\"Trouble Shooting") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808550037) (:by |rJG4IHzWf) (:text |:trouble-shooting) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808552206) (:by |rJG4IHzWf) (:text "|\"guide/trouble-shooting.md") (:type :leaf)
                              |zP $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808558085) (:by |rJG4IHzWf) (:text "|\"SSR") (:type :leaf)
                                  |h $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808560821) (:by |rJG4IHzWf) (:text |:ssr) (:type :leaf)
                                  |l $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808236063) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808563090) (:by |rJG4IHzWf) (:text "|\"guide/SSR.md") (:type :leaf)
                  |n $ {} (:at 1648808853033) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648808853033) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648808853033) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648808853033) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648808856806) (:by |rJG4IHzWf) (:text "|\"API") (:type :leaf)
                      |h $ {} (:at 1648808853033) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648808853033) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648808858974) (:by |rJG4IHzWf) (:text |:api) (:type :leaf)
                      |l $ {} (:at 1648808853033) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648808853033) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648808853033) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648808853033) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648809273734) (:by |rJG4IHzWf) (:text "|\"api.md") (:type :leaf)
                      |o $ {} (:at 1648808867377) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648808869049) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1648808871950) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648808872182) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808884122) (:by |rJG4IHzWf) (:text "|\"defcomp") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808888587) (:by |rJG4IHzWf) (:text |:defcomp) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808896559) (:by |rJG4IHzWf) (:text "|\"apis/defcomp.md") (:type :leaf)
                              |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808903910) (:by |rJG4IHzWf) (:text "|\"div") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808905244) (:by |rJG4IHzWf) (:text |:div) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808907033) (:by |rJG4IHzWf) (:text "|\"apis/div.md") (:type :leaf)
                              |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808912948) (:by |rJG4IHzWf) (:text "|\"<>") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808917498) (:by |rJG4IHzWf) (:text |:expand-tag) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808920917) (:by |rJG4IHzWf) (:text "|\"apis/expand-tag.md") (:type :leaf)
                              |m $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808954784) (:by |rJG4IHzWf) (:text "|\"defeffect") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808957929) (:by |rJG4IHzWf) (:text |:defeffect) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808965285) (:by |rJG4IHzWf) (:text "|\"apis/defeffect.md") (:type :leaf)
                              |o $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808926327) (:by |rJG4IHzWf) (:text "|\"create-element") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808931553) (:by |rJG4IHzWf) (:text |:create-element) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808944289) (:by |rJG4IHzWf) (:text "|\"apis/create-element.md") (:type :leaf)
                              |q $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808972720) (:by |rJG4IHzWf) (:text "|\"render!") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648808985456) (:by |rJG4IHzWf) (:text |:render!) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648808983227) (:by |rJG4IHzWf) (:text "|\"apis/render_.md") (:type :leaf)
                              |s $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648808997854) (:by |rJG4IHzWf) (:text "|\"clear-cache!") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648809005543) (:by |rJG4IHzWf) (:text |:clear-cacher!) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648809012503) (:by |rJG4IHzWf) (:text "|\"apis/clear-cache_.md") (:type :leaf)
                              |t $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648809023116) (:by |rJG4IHzWf) (:text "|\"realize-ssr!") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648809032323) (:by |rJG4IHzWf) (:text |:realize-ssr!) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648809039446) (:by |rJG4IHzWf) (:text "|\"apis/realize-ssr_.md") (:type :leaf)
                              |u $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648809050297) (:by |rJG4IHzWf) (:text "|\"list->") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648809057065) (:by |rJG4IHzWf) (:text |:list->) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648809062396) (:by |rJG4IHzWf) (:text "|\"apis/list-_.md") (:type :leaf)
                              |v $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648809070338) (:by |rJG4IHzWf) (:text "|\">>") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648809076320) (:by |rJG4IHzWf) (:text |:pick-states) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648809080235) (:by |rJG4IHzWf) (:text "|\"apis/pick-states.md") (:type :leaf)
                              |w $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648809091582) (:by |rJG4IHzWf) (:text "|\"comp-space") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648809094675) (:by |rJG4IHzWf) (:text |:comp-space) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648809101343) (:by |rJG4IHzWf) (:text "|\"apis/comp-space.md") (:type :leaf)
                              |x $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648809110612) (:by |rJG4IHzWf) (:text "|\"comp-inspect") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648809113411) (:by |rJG4IHzWf) (:text |:comp-inspect) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648809115999) (:by |rJG4IHzWf) (:text "|\"apis/comp-inspect.md") (:type :leaf)
                              |y $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648809133831) (:by |rJG4IHzWf) (:text "|\"make-string") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648809137078) (:by |rJG4IHzWf) (:text |:make-string) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648809141032) (:by |rJG4IHzWf) (:text "|\"apis/make-string.md") (:type :leaf)
                              |z $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648809149452) (:by |rJG4IHzWf) (:text "|\"render-app") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648809152749) (:by |rJG4IHzWf) (:text |:render-app) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648809156527) (:by |rJG4IHzWf) (:text "|\"apis/render-app.md") (:type :leaf)
                              |zD $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648809167583) (:by |rJG4IHzWf) (:text "|\"purify-element") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648809170776) (:by |rJG4IHzWf) (:text |:purify-element) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648809172607) (:by |rJG4IHzWf) (:text "|\"apis/purify-element.md") (:type :leaf)
                              |zP $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648809178879) (:by |rJG4IHzWf) (:text "|\"mute-element") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648809182336) (:by |rJG4IHzWf) (:text |:mute-element) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648809184025) (:by |rJG4IHzWf) (:text "|\"apis/mute-element.md") (:type :leaf)
                              |zY $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648809193463) (:by |rJG4IHzWf) (:text "|\"find-element-diffs") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648809195444) (:by |rJG4IHzWf) (:text |:find-element-diffs) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648809197107) (:by |rJG4IHzWf) (:text "|\"apis/find-element-diffs.md") (:type :leaf)
                              |ze $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648809205836) (:by |rJG4IHzWf) (:text "|\"apply-dom-changes") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648809207498) (:by |rJG4IHzWf) (:text |:apply-dom-changes) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648809209175) (:by |rJG4IHzWf) (:text "|\"apis/apply-dom-changes.md") (:type :leaf)
                              |zj $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648809224308) (:by |rJG4IHzWf) (:text "|\"activate-instance!") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648809218792) (:by |rJG4IHzWf) (:text |:activate-instance) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648809221446) (:by |rJG4IHzWf) (:text "|\"apis/activate-instance.md") (:type :leaf)
                              |zn $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648809233099) (:by |rJG4IHzWf) (:text "|\"patch-instance!") (:type :leaf)
                                  |h $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648809235963) (:by |rJG4IHzWf) (:text |:patch-instance) (:type :leaf)
                                  |l $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648808879824) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648809238988) (:by |rJG4IHzWf) (:text "|\"apis/patch-instance.md") (:type :leaf)
                  |q $ {} (:at 1648809243696) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648809243696) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648809243696) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648809243696) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648809247664) (:by |rJG4IHzWf) (:text "|\"Community") (:type :leaf)
                      |h $ {} (:at 1648809243696) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648809243696) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648809252328) (:by |rJG4IHzWf) (:text |:community) (:type :leaf)
                      |l $ {} (:at 1648809243696) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648809243696) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648809243696) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648809243696) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648809289301) (:by |rJG4IHzWf) (:text "|\"community.md") (:type :leaf)
          |load-doc $ {} (:at 1646492039492) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1646492046361) (:by |rJG4IHzWf) (:text |defmacro) (:type :leaf)
              |b $ {} (:at 1646492039492) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
              |h $ {} (:at 1646492039492) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646492043321) (:by |rJG4IHzWf) (:text |filename) (:type :leaf)
              |l $ {} (:at 1646492047430) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646492049914) (:by |rJG4IHzWf) (:text |read-file) (:type :leaf)
                  |b $ {} (:at 1646492050611) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1646492051158) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                      |b $ {} (:at 1646492054009) (:by |rJG4IHzWf) (:text "|\"docs/") (:type :leaf)
                      |h $ {} (:at 1646492057193) (:by |rJG4IHzWf) (:text |filename) (:type :leaf)
          |store $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |store) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1499755354983) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1584781004285) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1584781007287) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584781007486) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.schema) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
      |app.updater $ {}
        :defs $ {}
          |updater $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |updater) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |store) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |r $ {} (:at 1584874633844) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                  |v $ {} (:at 1519489491135) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1519489492110) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1627849233602) (:by |rJG4IHzWf) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |l $ {} (:at 1627849235240) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1627849235639) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                      |j $ {} (:at 1627849235881) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1627849236652) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                          |j $ {} (:at 1627849247340) (:by |rJG4IHzWf) (:text "|\"unknown op:") (:type :leaf)
                          |r $ {} (:at 1627849241947) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                      |r $ {} (:at 1627849245294) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                  |n $ {} (:at 1507399852251) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399855618) (:by |root) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1584874625235) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584874626558) (:by |rJG4IHzWf) (:text |update-states) (:type :leaf)
                          |j $ {} (:at 1584874628374) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |r $ {} (:at 1584874632002) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                  |t $ {} (:at 1518157547521) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1518157657108) (:by |root) (:text |:hydrate-storage) (:type :leaf)
                      |j $ {} (:at 1584874637339) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.updater) (:type :leaf)
            |r $ {} (:at 1584874614885) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1584874616480) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |j $ {} (:at 1584874616720) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1584874620034) (:by |rJG4IHzWf) (:text |respo.cursor) (:type :leaf)
                    |r $ {} (:at 1584874621356) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1584874621524) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1584874623096) (:by |rJG4IHzWf) (:text |update-states) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
