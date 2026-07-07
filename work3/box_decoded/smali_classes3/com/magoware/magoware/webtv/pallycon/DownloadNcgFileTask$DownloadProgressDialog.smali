.class Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;
.super Ljava/lang/Object;
.source "DownloadNcgFileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadProgressDialog"
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTxtDownloadPercen:Landroid/widget/TextView;

.field private mTxtDownloadedSize:Landroid/widget/TextView;

.field private mTxtRemoteFileSize:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->this$0:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;)Landroid/widget/TextView;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->mTxtDownloadPercen:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;)Landroid/widget/TextView;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->mTxtDownloadedSize:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;)Landroid/widget/TextView;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->mTxtRemoteFileSize:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->this$0:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->access$400(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;)Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->this$0:Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;->access$400(Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask;)Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->mTxtDownloadPercen:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->mTxtDownloadedSize:Landroid/widget/TextView;

    const-string v1, "ready"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->mTxtRemoteFileSize:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 310
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/DownloadNcgFileTask$DownloadProgressDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
