.class synthetic Lcom/verimatrix/vdc/StreamDataLoad$1;
.super Ljava/lang/Object;
.source "StreamDataLoad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/StreamDataLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$verimatrix$vdc$Monitor$MediaType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    invoke-static {}, Lcom/verimatrix/vdc/Monitor$MediaType;->values()[Lcom/verimatrix/vdc/Monitor$MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/verimatrix/vdc/StreamDataLoad$1;->$SwitchMap$com$verimatrix$vdc$Monitor$MediaType:[I

    :try_start_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$MediaType;->LINEAR_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Monitor$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/verimatrix/vdc/StreamDataLoad$1;->$SwitchMap$com$verimatrix$vdc$Monitor$MediaType:[I

    sget-object v1, Lcom/verimatrix/vdc/Monitor$MediaType;->BROADCAST_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Monitor$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
