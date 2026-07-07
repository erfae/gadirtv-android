.class final enum Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;
.super Ljava/lang/Enum;
.source "MonitorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/MonitorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LongEncoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

.field public static final enum APPLICATION:Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

.field public static final enum CONFIGURATION:Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

    const-string v1, "CONFIGURATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;->CONFIGURATION:Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

    new-instance v1, Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

    const-string v3, "APPLICATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;->APPLICATION:Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 40
    sput-object v3, Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;->$VALUES:[Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;
    .locals 1

    .line 40
    const-class v0, Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;
    .locals 1

    .line 40
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;->$VALUES:[Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

    return-object v0
.end method
