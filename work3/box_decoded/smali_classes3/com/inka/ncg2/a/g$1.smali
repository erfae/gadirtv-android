.class Lcom/inka/ncg2/a/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inka/ncg2/a/g;


# direct methods
.method constructor <init>(Lcom/inka/ncg2/a/g;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/inka/ncg2/a/g$1;->a:Lcom/inka/ncg2/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/inka/ncg2/a/g$1;->a:Lcom/inka/ncg2/a/g;

    invoke-static {v0}, Lcom/inka/ncg2/a/g;->a(Lcom/inka/ncg2/a/g;)Lcom/inka/ncg2/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/inka/ncg2/a/g$1;->a:Lcom/inka/ncg2/a/g;

    invoke-static {v0}, Lcom/inka/ncg2/a/g;->a(Lcom/inka/ncg2/a/g;)Lcom/inka/ncg2/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/inka/ncg2/a/g$1;->a:Lcom/inka/ncg2/a/g;

    invoke-static {v1}, Lcom/inka/ncg2/a/g;->b(Lcom/inka/ncg2/a/g;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/inka/ncg2/a/d;->a(Z)V

    :cond_0
    return-void
.end method
