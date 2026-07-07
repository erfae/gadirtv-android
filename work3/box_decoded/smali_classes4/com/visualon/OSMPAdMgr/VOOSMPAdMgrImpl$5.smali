.class synthetic Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;
.super Ljava/lang/Object;
.source "VOOSMPAdMgrImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID:[I

.field static final synthetic $SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdMgrImpl$ADSMGR_EVENT_ID:[I

.field static final synthetic $SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdType$VO_OSMP_SDK_ID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1136
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdMgrImpl$ADSMGR_EVENT_ID:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_LOAD_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    invoke-virtual {v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdMgrImpl$ADSMGR_EVENT_ID:[I

    sget-object v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_START_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    invoke-virtual {v3}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdMgrImpl$ADSMGR_EVENT_ID:[I

    sget-object v4, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_ABORT_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    invoke-virtual {v4}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdMgrImpl$ADSMGR_EVENT_ID:[I

    sget-object v5, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_CLEAR_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    invoke-virtual {v5}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdMgrImpl$ADSMGR_EVENT_ID:[I

    sget-object v6, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_SUSPEND_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    invoke-virtual {v6}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdMgrImpl$ADSMGR_EVENT_ID:[I

    sget-object v7, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_RESUME_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    invoke-virtual {v7}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdMgrImpl$ADSMGR_EVENT_ID:[I

    sget-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_MUTE_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    invoke-virtual {v8}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdMgrImpl$ADSMGR_EVENT_ID:[I

    sget-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_UNMUTE_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    invoke-virtual {v9}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdMgrImpl$ADSMGR_EVENT_ID:[I

    sget-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_PAUSE_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    invoke-virtual {v9}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ordinal()I

    move-result v9

    const/16 v10, 0x9

    aput v10, v8, v9
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdMgrImpl$ADSMGR_EVENT_ID:[I

    sget-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_UNPAUSE_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    invoke-virtual {v9}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ordinal()I

    move-result v9

    const/16 v10, 0xa

    aput v10, v8, v9
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdMgrImpl$ADSMGR_EVENT_ID:[I

    sget-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ADSMGR_EVENT_SKIP_AD_VIEW:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;

    invoke-virtual {v9}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$ADSMGR_EVENT_ID;->ordinal()I

    move-result v9

    const/16 v10, 0xb

    aput v10, v8, v9
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 944
    :catch_a
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID:[I

    :try_start_b
    sget-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_AD_BREAK_START:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    invoke-virtual {v9}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID:[I

    sget-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_AD_POD_START:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    invoke-virtual {v9}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID:[I

    sget-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_AD_START:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    invoke-virtual {v9}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID:[I

    sget-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_AD_END:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    invoke-virtual {v9}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID:[I

    sget-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_AD_BREAK_END:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    invoke-virtual {v9}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->ordinal()I

    move-result v9

    aput v4, v8, v9
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID:[I

    sget-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_AD_CUE_POINTS:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    invoke-virtual {v9}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->ordinal()I

    move-result v9

    aput v5, v8, v9
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID:[I

    sget-object v9, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_SDK_EVENT:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    invoke-virtual {v9}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->ordinal()I

    move-result v9

    aput v6, v8, v9
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v6, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID:[I

    sget-object v8, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->VO_OSMP_AD_EVENT_NO_AD_VAST:Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;

    invoke-virtual {v8}, Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener$VO_OSMP_AD_EVENT_ID;->ordinal()I

    move-result v8

    aput v7, v6, v8
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    .line 316
    :catch_12
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->values()[Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdType$VO_OSMP_SDK_ID:[I

    :try_start_13
    sget-object v7, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->VO_OSMP_SDK_ADOBE_HEARTBEAT:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;

    invoke-virtual {v7}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdType$VO_OSMP_SDK_ID:[I

    sget-object v6, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->VO_OSMP_SDK_COMSCORE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;

    invoke-virtual {v6}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->ordinal()I

    move-result v6

    aput v0, v1, v6
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdType$VO_OSMP_SDK_ID:[I

    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->VO_OSMP_SDK_NIELSEN:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdType$VO_OSMP_SDK_ID:[I

    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->VO_OSMP_SDK_DW:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdType$VO_OSMP_SDK_ID:[I

    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->VO_OSMP_SDK_IMADAI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$5;->$SwitchMap$com$visualon$OSMPAdMgr$VOOSMPAdType$VO_OSMP_SDK_ID:[I

    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->VO_OSMP_SDK_MEDIATAILOR:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;

    invoke-virtual {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    return-void
.end method
