.class synthetic Lcom/verimatrix/vdc/MonitorAgent$3;
.super Ljava/lang/Object;
.source "MonitorAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/MonitorAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$verimatrix$vdc$Monitor$StreamFunction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 499
    invoke-static {}, Lcom/verimatrix/vdc/Monitor$StreamFunction;->values()[Lcom/verimatrix/vdc/Monitor$StreamFunction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/verimatrix/vdc/MonitorAgent$3;->$SwitchMap$com$verimatrix$vdc$Monitor$StreamFunction:[I

    :try_start_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$StreamFunction;->DOWNLOAD_ONLY:Lcom/verimatrix/vdc/Monitor$StreamFunction;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Monitor$StreamFunction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
