FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}/${LINUX_VERSION}:"

SRC_URI_append = " \
   file://0001-cpufreq-Frequency-invariant-scheduler-load-tracking-.patch \
   file://0002-arm64-Enable-frequency-invariant-scheduler-load-trac.patch \
   file://0003-sched-Store-system-wide-maximum-cpu-capacity-in-root.patch \
   file://0004-sched-Add-cpu-capacity-awareness-to-wakeup-balancing.patch \
   file://0005-sched-Consider-spare-cpu-capacity-at-task-wake-up.patch \
   file://0006-sched-Enable-idle-balance-to-pull-single-task-toward.patch \
   file://0007-sched-Prevent-unnecessary-active-balance-of-single-t.patch \
   file://0008-sched-Documentation-for-scheduler-energy-cost-model.patch \
   file://0009-sched-Make-energy-awareness-a-sched-feature.patch \
   file://0010-sched-Introduce-energy-data-structures.patch \
   file://0011-sched-Initialize-energy-data-structures.patch \
   file://0012-sched-Introduce-SD_SHARE_CAP_STATES-sched_domain-fla.patch \
   file://0013-arm64-topology-Define-JUNO-energy-and-provide-it-to-.patch \
   file://0014-arm64-Cpu-invariant-scheduler-load-tracking-and-capa.patch \
   file://0015-sched-Compute-cpu-capacity-available-at-current-freq.patch \
   file://0016-sched-Relocated-cpu_util-and-change-return-type.patch \
   file://0017-sched-Highest-energy-aware-balancing-sched_domain-le.patch \
   file://0018-sched-Calculate-energy-consumption-of-sched_group.patch \
   file://0019-sched-Extend-sched_group_energy-to-test-load-balanci.patch \
   file://0020-sched-Estimate-energy-impact-of-scheduling-decisions.patch \
   file://0021-sched-Add-over-utilization-tipping-point-indicator.patch \
   file://0022-sched-cpuidle-Track-cpuidle-state-index-in-the-sched.patch \
   file://0023-sched-Determine-the-current-sched_group-idle-state.patch \
   file://0024-sched-Energy-aware-wake-up-task-placement.patch \
   file://0025-sched-Consider-a-not-over-utilized-energy-aware-syst.patch \
   file://0026-sched-Disable-energy-unfriendly-nohz-kicks.patch \
   file://0027-cpufreq-Max-freq-invariant-scheduler-load-tracking-a.patch \
   file://0028-sched-Update-max-cpu-capacity-in-case-of-max-frequen.patch \
   file://0029-arm64-Enable-max-freq-invariant-scheduler-load-track.patch \
   file://0030-arm64-dts-Add-multi-cluster-to-r8a7795-dtsi.patch \
   file://0031-arm64-dts-Add-multi-cluster-to-r8a7796-dtsi.patch \
   file://0032-arm64-Define-R-CAR-H3-and-M3-energy-and-provide-it-t.patch \
   file://0033-sched-Enable-energy-awareness-a-sched-feature-by-def.patch \
   file://0034-sched-Fix-const-definition-on-function-return-type.patch \
"

