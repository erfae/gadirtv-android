.class public Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;
.super Ljava/lang/Object;
.source "VOVMXAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/VOVMXLibrary/VOVMXAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VOVMXConfiguration"
.end annotation


# static fields
.field private static APP_ID:Ljava/lang/Object; = null

.field private static MIRIMON_URL:Ljava/lang/Object; = null

.field public static REPORT_INTERVAL:J = 0x3e8L

.field private static SUBSCRIBER_ID:Ljava/lang/Object;

.field private static USER_ID:Ljava/lang/Object;

.field private static USER_TYPE:Ljava/lang/Object;

.field private static VMX_OPERATOR_CODE:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DefaultAppID"

    .line 72
    sput-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->APP_ID:Ljava/lang/Object;

    const-string v0, "12345"

    .line 73
    sput-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->VMX_OPERATOR_CODE:Ljava/lang/Object;

    const-string v0, "http://staging-mirimon.kevdenti.com"

    .line 74
    sput-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->MIRIMON_URL:Ljava/lang/Object;

    const-string v0, "DefaultSubsID"

    .line 75
    sput-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->SUBSCRIBER_ID:Ljava/lang/Object;

    const-string v0, "DefaultUser"

    .line 76
    sput-object v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->USER_ID:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAttributes()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$LoginAttribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    sget-object v1, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->APP_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    sget-object v2, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->APP_ID:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->GD_OPERATOR_CODE:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    sget-object v2, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->VMX_OPERATOR_CODE:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->MIRIMON_URL:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    sget-object v2, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->MIRIMON_URL:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->SUBSCRIBER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    sget-object v2, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->SUBSCRIBER_ID:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->USER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    sget-object v2, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->USER_ID:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->APP_ID:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->USER_TYPE:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    sget-object v2, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->USER_TYPE:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public setReportInterval(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 106
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    sput-wide p1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->REPORT_INTERVAL:J

    return-void
.end method

.method public withAppID(Ljava/lang/Object;)Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;
    .locals 0

    .line 81
    sput-object p1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->APP_ID:Ljava/lang/Object;

    return-object p0
.end method

.method public withGDOperatorCode(Ljava/lang/Object;)Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;
    .locals 0

    .line 85
    sput-object p1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->VMX_OPERATOR_CODE:Ljava/lang/Object;

    return-object p0
.end method

.method public withMirimonUrl(Ljava/lang/Object;)Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;
    .locals 0

    .line 89
    sput-object p1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->MIRIMON_URL:Ljava/lang/Object;

    return-object p0
.end method

.method public withSubscriberID(Ljava/lang/Object;)Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;
    .locals 0

    .line 93
    sput-object p1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->SUBSCRIBER_ID:Ljava/lang/Object;

    return-object p0
.end method

.method public withUserID(Ljava/lang/Object;)Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;
    .locals 0

    .line 97
    sput-object p1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->USER_ID:Ljava/lang/Object;

    return-object p0
.end method

.method public withUserType(Ljava/lang/Object;)Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;
    .locals 0

    .line 101
    sput-object p1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->USER_TYPE:Ljava/lang/Object;

    return-object p0
.end method
