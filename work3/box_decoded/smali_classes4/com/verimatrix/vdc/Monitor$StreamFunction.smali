.class public final enum Lcom/verimatrix/vdc/Monitor$StreamFunction;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$StreamFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$StreamFunction;

.field public static final enum DOWNLOAD_AND_PLAYBACK:Lcom/verimatrix/vdc/Monitor$StreamFunction;

.field public static final enum DOWNLOAD_ONLY:Lcom/verimatrix/vdc/Monitor$StreamFunction;

.field public static final enum PLAYBACK_ONLY:Lcom/verimatrix/vdc/Monitor$StreamFunction;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 652
    new-instance v0, Lcom/verimatrix/vdc/Monitor$StreamFunction;

    const-string v1, "DOWNLOAD_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/verimatrix/vdc/Monitor$StreamFunction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$StreamFunction;->DOWNLOAD_ONLY:Lcom/verimatrix/vdc/Monitor$StreamFunction;

    .line 653
    new-instance v1, Lcom/verimatrix/vdc/Monitor$StreamFunction;

    const-string v3, "PLAYBACK_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/verimatrix/vdc/Monitor$StreamFunction;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$StreamFunction;->PLAYBACK_ONLY:Lcom/verimatrix/vdc/Monitor$StreamFunction;

    .line 654
    new-instance v3, Lcom/verimatrix/vdc/Monitor$StreamFunction;

    const-string v5, "DOWNLOAD_AND_PLAYBACK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/verimatrix/vdc/Monitor$StreamFunction;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$StreamFunction;->DOWNLOAD_AND_PLAYBACK:Lcom/verimatrix/vdc/Monitor$StreamFunction;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/verimatrix/vdc/Monitor$StreamFunction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 651
    sput-object v5, Lcom/verimatrix/vdc/Monitor$StreamFunction;->$VALUES:[Lcom/verimatrix/vdc/Monitor$StreamFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 658
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 659
    iput p3, p0, Lcom/verimatrix/vdc/Monitor$StreamFunction;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$StreamFunction;
    .locals 1

    .line 651
    const-class v0, Lcom/verimatrix/vdc/Monitor$StreamFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$StreamFunction;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$StreamFunction;
    .locals 1

    .line 651
    sget-object v0, Lcom/verimatrix/vdc/Monitor$StreamFunction;->$VALUES:[Lcom/verimatrix/vdc/Monitor$StreamFunction;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$StreamFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$StreamFunction;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 663
    iget v0, p0, Lcom/verimatrix/vdc/Monitor$StreamFunction;->value:I

    return v0
.end method
