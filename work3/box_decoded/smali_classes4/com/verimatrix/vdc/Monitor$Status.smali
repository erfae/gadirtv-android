.class public final enum Lcom/verimatrix/vdc/Monitor$Status;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$Status;

.field public static final enum ERROR:Lcom/verimatrix/vdc/Monitor$Status;

.field public static final enum NO_COMMS:Lcom/verimatrix/vdc/Monitor$Status;

.field public static final enum OK:Lcom/verimatrix/vdc/Monitor$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 348
    new-instance v0, Lcom/verimatrix/vdc/Monitor$Status;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verimatrix/vdc/Monitor$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    .line 349
    new-instance v1, Lcom/verimatrix/vdc/Monitor$Status;

    const-string v3, "NO_COMMS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verimatrix/vdc/Monitor$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$Status;->NO_COMMS:Lcom/verimatrix/vdc/Monitor$Status;

    .line 350
    new-instance v3, Lcom/verimatrix/vdc/Monitor$Status;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verimatrix/vdc/Monitor$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/verimatrix/vdc/Monitor$Status;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 347
    sput-object v5, Lcom/verimatrix/vdc/Monitor$Status;->$VALUES:[Lcom/verimatrix/vdc/Monitor$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 347
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1

    .line 347
    const-class v0, Lcom/verimatrix/vdc/Monitor$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$Status;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1

    .line 347
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->$VALUES:[Lcom/verimatrix/vdc/Monitor$Status;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0
.end method
