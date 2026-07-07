.class public final enum Lcom/verimatrix/vdc/Monitor$StreamType;
.super Ljava/lang/Enum;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verimatrix/vdc/Monitor$StreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verimatrix/vdc/Monitor$StreamType;

.field public static final enum AUDIO:Lcom/verimatrix/vdc/Monitor$StreamType;

.field public static final enum AUDIO_VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

.field public static final enum VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 212
    new-instance v0, Lcom/verimatrix/vdc/Monitor$StreamType;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/verimatrix/vdc/Monitor$StreamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO:Lcom/verimatrix/vdc/Monitor$StreamType;

    .line 213
    new-instance v1, Lcom/verimatrix/vdc/Monitor$StreamType;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/verimatrix/vdc/Monitor$StreamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/verimatrix/vdc/Monitor$StreamType;->VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    .line 214
    new-instance v3, Lcom/verimatrix/vdc/Monitor$StreamType;

    const-string v5, "AUDIO_VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/verimatrix/vdc/Monitor$StreamType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO_VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/verimatrix/vdc/Monitor$StreamType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 211
    sput-object v5, Lcom/verimatrix/vdc/Monitor$StreamType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$StreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 219
    iput p3, p0, Lcom/verimatrix/vdc/Monitor$StreamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$StreamType;
    .locals 1

    .line 211
    const-class v0, Lcom/verimatrix/vdc/Monitor$StreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verimatrix/vdc/Monitor$StreamType;

    return-object p0
.end method

.method public static values()[Lcom/verimatrix/vdc/Monitor$StreamType;
    .locals 1

    .line 211
    sget-object v0, Lcom/verimatrix/vdc/Monitor$StreamType;->$VALUES:[Lcom/verimatrix/vdc/Monitor$StreamType;

    invoke-virtual {v0}, [Lcom/verimatrix/vdc/Monitor$StreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verimatrix/vdc/Monitor$StreamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/verimatrix/vdc/Monitor$StreamType;->value:I

    return v0
.end method
