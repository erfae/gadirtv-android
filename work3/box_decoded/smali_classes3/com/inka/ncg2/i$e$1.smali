.class Lcom/inka/ncg2/i$e$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inka/ncg2/i$e;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inka/ncg2/i$e;


# direct methods
.method constructor <init>(Lcom/inka/ncg2/i$e;)V
    .locals 0

    .line 2786
    iput-object p1, p0, Lcom/inka/ncg2/i$e$1;->a:Lcom/inka/ncg2/i$e;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2790
    iget-object v0, p0, Lcom/inka/ncg2/i$e$1;->a:Lcom/inka/ncg2/i$e;

    iget-object v0, v0, Lcom/inka/ncg2/i$e;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->writeSecureTimeToFile()V

    return-void
.end method
