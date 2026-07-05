.class Lcom/nettv/livestore/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$ButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/MainActivity;->showDescriptionDlgFragment(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/MainActivity;

.field public final synthetic val$playlist_size:I


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/MainActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/nettv/livestore/MainActivity$2;->this$0:Lcom/nettv/livestore/MainActivity;

    iput p2, p0, Lcom/nettv/livestore/MainActivity$2;->val$playlist_size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/MainActivity$2;->this$0:Lcom/nettv/livestore/MainActivity;

    # invokes: Lcom/nettv/livestore/MainActivity;->finishApp()V
    invoke-static {v0}, Lcom/nettv/livestore/MainActivity;->access$200(Lcom/nettv/livestore/MainActivity;)V

    return-void
.end method

.method public onContinueClick()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/nettv/livestore/MainActivity$2;->val$playlist_size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity$2;->this$0:Lcom/nettv/livestore/MainActivity;

    # invokes: Lcom/nettv/livestore/MainActivity;->goToWebsite()V
    invoke-static {v0}, Lcom/nettv/livestore/MainActivity;->access$000(Lcom/nettv/livestore/MainActivity;)V

    goto :goto_10

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity$2;->this$0:Lcom/nettv/livestore/MainActivity;

    # invokes: Lcom/nettv/livestore/MainActivity;->loadingData()V
    invoke-static {v0}, Lcom/nettv/livestore/MainActivity;->access$100(Lcom/nettv/livestore/MainActivity;)V

    :goto_10
    return-void
.end method
