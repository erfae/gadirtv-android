.class synthetic Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$1;
.super Ljava/lang/Object;
.source "VOCommonPlayerJavaImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$visualon$OSMPPlayerImpl$OSMPSync$VOSynchronousType:[I

.field static final synthetic $SwitchMap$com$visualon$OSMPUtils$voOSType$VOOSMP_OUTPUT_CONTROL_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 2820
    invoke-static {}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->values()[Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$1;->$SwitchMap$com$visualon$OSMPPlayerImpl$OSMPSync$VOSynchronousType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->SERVER:Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$1;->$SwitchMap$com$visualon$OSMPPlayerImpl$OSMPSync$VOSynchronousType:[I

    sget-object v3, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->CLIENT:Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$1;->$SwitchMap$com$visualon$OSMPPlayerImpl$OSMPSync$VOSynchronousType:[I

    sget-object v3, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->NOSYNC:Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 360
    :catch_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$1;->$SwitchMap$com$visualon$OSMPUtils$voOSType$VOOSMP_OUTPUT_CONTROL_TYPE:[I

    :try_start_3
    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl$1;->$SwitchMap$com$visualon$OSMPUtils$voOSType$VOOSMP_OUTPUT_CONTROL_TYPE:[I

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
