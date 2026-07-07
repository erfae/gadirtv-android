.class public final enum Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;
.super Ljava/lang/Enum;
.source "DeviceStringQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/DeviceStringQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "queue_statuses"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

.field public static final enum INITIALIZING:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

.field public static final enum PAUSED:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

.field public static final enum PROCESSING:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

.field public static final enum STOPPED:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;


# instance fields
.field private final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 27
    new-instance v0, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->STOPPED:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    .line 28
    new-instance v1, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    const-string v4, "PAUSED"

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v1, v4, v5, v6}, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->PAUSED:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    .line 29
    new-instance v4, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    const-string v7, "PROCESSING"

    invoke-direct {v4, v7, v6, v5}, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->PROCESSING:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    .line 30
    new-instance v7, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    const-string v8, "INITIALIZING"

    invoke-direct {v7, v8, v3, v2}, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->INITIALIZING:Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    aput-object v0, v8, v2

    aput-object v1, v8, v5

    aput-object v4, v8, v6

    aput-object v7, v8, v3

    .line 26
    sput-object v8, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->$VALUES:[Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->statusCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;
    .locals 1

    .line 26
    const-class v0, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;
    .locals 1

    .line 26
    sget-object v0, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->$VALUES:[Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;

    return-object v0
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/verimatrix/vdc/DeviceStringQueue$queue_statuses;->statusCode:I

    return v0
.end method
