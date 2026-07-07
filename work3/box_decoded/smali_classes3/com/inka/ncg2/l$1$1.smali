.class Lcom/inka/ncg2/l$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inka/ncg2/l$1;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inka/ncg2/l$1;


# direct methods
.method constructor <init>(Lcom/inka/ncg2/l$1;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/inka/ncg2/l$1$1;->a:Lcom/inka/ncg2/l$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/inka/ncg2/l$1$1;->a:Lcom/inka/ncg2/l$1;

    iget-object v1, v1, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-static {v1}, Lcom/inka/ncg2/l;->c(Lcom/inka/ncg2/l;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v2, "NCG DRM SDK"

    .line 60
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Cannot play content longer than limited minutes with tiral SDK."

    .line 61
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 62
    new-instance v2, Lcom/inka/ncg2/l$1$1$1;

    invoke-direct {v2, p0}, Lcom/inka/ncg2/l$1$1$1;-><init>(Lcom/inka/ncg2/l$1$1;)V

    const-string v3, "OK"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 68
    iget-object v0, p0, Lcom/inka/ncg2/l$1$1;->a:Lcom/inka/ncg2/l$1;

    iget-object v0, v0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-virtual {v0}, Lcom/inka/ncg2/l;->clearPlaybackUrls()V

    .line 69
    iget-object v0, p0, Lcom/inka/ncg2/l$1$1;->a:Lcom/inka/ncg2/l$1;

    iget-object v0, v0, Lcom/inka/ncg2/l$1;->a:Lcom/inka/ncg2/l;

    invoke-static {v0, v1}, Lcom/inka/ncg2/l;->a(Lcom/inka/ncg2/l;Z)Z

    return-void
.end method
