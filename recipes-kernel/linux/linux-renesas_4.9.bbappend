FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}/${LINUX_VERSION}:"

SRC_URI_append = " \
   file://eas.cfg \
   file://0001-sched-fair-Kill-the-unused-sched_shares_window_ns-tu.patch \
   file://0002-sched-fair-Compute-task-cpu-utilization-at-wake-up-c.patch \
   file://0003-sched-fair-Consider-spare-capacity-in-find_idlest_gr.patch \
   file://0004-sched-fair-Add-per-CPU-min-capacity-to-sched_group_c.patch \
   file://0005-sched-fair-Avoid-pulling-tasks-from-non-overloaded-h.patch \
   file://0006-sched-fair-Fix-incorrect-comment-for-capacity_margin.patch \
   file://0007-sched-fair-Factorize-attach-detach-entity.patch \
   file://0008-sched-fair-Fix-hierarchical-order-in-rq-leaf_cfs_rq_.patch \
   file://0009-sched-fair-Factorize-PELT-update.patch \
   file://0010-sched-fair-Propagate-load-during-synchronous-attach-.patch \
   file://0011-sched-fair-Propagate-asynchrous-detach.patch \
   file://0012-sched-fair-Fix-task-group-initialization.patch \
   file://0013-sched-dl-Fix-comment-in-pick_next_task_dl.patch \
   file://0014-sched-fair-Clean-up-the-tunable-parameter-definition.patch \
   file://0015-sched-Extend-scheduler-s-asym-packing.patch \
   file://0016-cpufreq-schedutil-Avoid-indented-labels.patch \
   file://0017-cpufreq-schedutil-enable-fast-switch-earlier.patch \
   file://0018-cpufreq-schedutil-move-slow-path-from-workqueue-to-S.patch \
   file://0019-cpufreq-schedutil-irq-work-and-mutex-are-only-used-i.patch \
   file://0020-x86-topology-Define-x86-s-arch_update_cpu_topology.patch \
   file://0021-sched-Prevent-unnecessary-active-balance-of-single-t.patch \
   file://0022-sched-Enable-idle-balance-to-pull-single-task-toward.patch \
   file://0023-Documentation-arm-define-DT-cpu-capacity-dmips-mhz-b.patch \
   file://0024-arm-parse-cpu-capacity-dmips-mhz-from-DT.patch \
   file://0025-fixup-arm-parse-cpu-capacity-dmips-mhz-from-DT.patch \
   file://0026-arm-dts-add-TC2-cpu-capacity-dmips-mhz-information.patch \
   file://0027-arm64-parse-cpu-capacity-dmips-mhz-from-DT.patch \
   file://0028-fixup-arm64-parse-cpu-capacity-dmips-mhz-from-DT.patch \
   file://0029-arm64-dts-add-Juno-cpu-capacity-dmips-mhz-informatio.patch \
   file://0030-arm64-dts-add-Juno-r2-cpu-capacity-dmips-mhz-informa.patch \
   file://0031-arm-add-sysfs-cpu_capacity-attribute.patch \
   file://0032-arm64-add-sysfs-cpu_capacity-attribute.patch \
   file://0033-fixup-arm-include-linux-cpufreq.h.patch \
   file://0034-arm-Re-wire-cpu-invariant-load-tracking-support-up-t.patch \
   file://0035-arm-Make-cpufreq-policy-notifier-usable-for-frequenc.patch \
   file://0036-arm-Frequency-invariant-load-tracking-support.patch \
   file://0037-arm-Wire-frequency-invariant-load-tracking-support-u.patch \
   file://0038-arm64-Wire-cpu-invariant-load-tracking-support-up-to.patch \
   file://0039-arm64-Make-cpufreq-policy-notifier-usable-for-freque.patch \
   file://0040-arm64-Frequency-invariant-load-tracking-support.patch \
   file://0041-arm64-Wire-frequency-invariant-load-tracking-support.patch \
   file://0042-arm-Set-SD_ASYM_CPUCAPACITY-for-big.LITTLE-platforms.patch \
   file://0043-arm-Update-SD_ASYM_CPUCAPACITY-topology-flag-when-cp.patch \
   file://0044-arm64-Set-SD_ASYM_CPUCAPACITY-topology-flag-for-asym.patch \
   file://0045-sched-Documentation-for-scheduler-energy-cost-model.patch \
   file://0046-sched-Make-energy-awareness-a-sched-feature.patch \
   file://0047-sched-Introduce-energy-data-structures.patch \
   file://0048-sched-Initialize-energy-data-structures.patch \
   file://0049-sched-EAS-cpu-hotplug-interoperability.patch \
   file://0050-sched-Introduce-SD_SHARE_CAP_STATES-sched_domain-fla.patch \
   file://0051-sched-Relocated-cpu_util-and-change-return-type.patch \
   file://0052-sched-Highest-energy-aware-balancing-sched_domain-le.patch \
   file://0053-sched-Calculate-energy-consumption-of-sched_group.patch \
   file://0054-sched-Extend-sched_group_energy-to-test-load-balanci.patch \
   file://0055-sched-Estimate-energy-impact-of-scheduling-decisions.patch \
   file://0056-sched-cpuidle-Track-cpuidle-state-index-in-the-sched.patch \
   file://0057-sched-Determine-the-current-sched_group-idle-state.patch \
   file://0058-sched-fair-Add-energy_diff-dead-zone-margin.patch \
   file://0059-sched-Add-over-utilization-tipping-point-indicator.patch \
   file://0060-sched-fair-Energy-aware-wake-up-task-placement.patch \
   file://0061-sched-fair-Fix-select_task_rq_brute-rcu_unlock-when-.patch \
   file://0062-sched-Consider-a-not-over-utilized-energy-aware-syst.patch \
   file://0063-sched-Disable-energy-unfriendly-nohz-kicks.patch \
   file://0064-arm-Set-SD_SHARE_CAP_STATES-sched_domain-flag-when-a.patch \
   file://0065-arm64-Set-SD_SHARE_CAP_STATES-sched_domain-flag-when.patch \
   file://0066-arm-topology-Define-TC2-energy-and-provide-it-to-the.patch \
   file://0067-arm-Cpu-invariant-scheduler-load-tracking-and-capaci.patch \
   file://0068-arm64-topology-Define-JUNO-energy-and-provide-it-to-.patch \
   file://0069-arm64-Cpu-invariant-scheduler-load-tracking-and-capa.patch \
   file://0070-arm64-Factor-out-energy-model-from-topology-shim-lay.patch \
   file://0071-arm64-Add-Hikey-energy-model.patch \
   file://0072-arm64-dts-Add-Hikey-cpu-capacity-dmips-mhz-informati.patch \
   file://0073-arm64-Introduce-sys-sd-energy-model-infrastructure.patch \
   file://0074-arm64-Define-Hi6220-SYS-sd-energy-model.patch \
   file://0075-sched-debug-Add-energy-procfs-interface.patch \
   file://0076-sched-events-Introduce-cfs_rq-PELT-trace-event-sched.patch \
   file://0077-sched-events-Introduce-sched-entity-PELT-trace-event.patch \
   file://0078-sched-events-Introduce-task-group-PELT-trace-event-s.patch \
   file://0079-sched-Call-cfs_rq-and-sched_entity-PELT-tracepoints-.patch \
   file://0080-sched-core-Fix-find_idlest_group-for-fork.patch \
   file://0081-SPLIT-sched-fair-Don-t-load-balance-from-group_other.patch \
   file://0082-sched-Add-group_misfit_task-load-balance-type.patch \
   file://0083-sched-Consider-misfit-tasks-when-load-balancing.patch \
   file://0084-arm64-dts-r8a7795-Add-multi-cluster-definition.patch \
   file://0085-arm64-dts-r8a7796-Add-multi-cluster-definition.patch \
   file://0086-arm64-dts-r8a7795-es1-Add-multi-cluster-definition.patch \
   file://0087-arm64-dts-r8a7795-Add-cpu-capacity-dmips-mhz.patch \
   file://0088-arm64-dts-r8a7796-Add-cpu-capacity-dmips-mhz.patch \
   file://0089-arm64-dts-r8a7795-es1-Add-cpu-capacity-dmips-mhz.patch \
   file://0090-arm64-Define-R-CAR-Gen3-energy-and-provide-it-to-the.patch \
   file://0091-sched-Enable-energy-awareness-a-sched-feature-by-def.patch \
   file://0092-cpufreq-schedutil-Use-policy-dependent-transition-de.patch \
"
