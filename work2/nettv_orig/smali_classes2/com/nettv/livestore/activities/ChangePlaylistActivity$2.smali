.class Lcom/nettv/livestore/activities/ChangePlaylistActivity$2;
.super Ljava/lang/Object;
.source "ChangePlaylistActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$SuccessAddedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/ChangePlaylistActivity;->showAddPlaylistDlgFragment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/ChangePlaylistActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/ChangePlaylistActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$2;->this$0:Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReload(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$2;->this$0:Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->is_home:Z

    .line 2
    iget-object p1, p1, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->addPlaylistDlgFragment:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$2;->this$0:Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    invoke-static {p1}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->access$000(Lcom/nettv/livestore/activities/ChangePlaylistActivity;)V

    return-void
.end method

.method public onSkip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$2;->this$0:Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->is_home:Z

    .line 2
    iget-object v0, v0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->addPlaylistDlgFragment:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/ChangePlaylistActivity$2;->this$0:Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    invoke-static {v0}, Lcom/nettv/livestore/activities/ChangePlaylistActivity;->access$000(Lcom/nettv/livestore/activities/ChangePlaylistActivity;)V

    return-void
.end method
