.class Lcom/nettv/livestore/activities/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment$SuccessAddedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/SettingActivity;->showAddPlaylistDlgFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/SettingActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/SettingActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity$1;->this$0:Lcom/nettv/livestore/activities/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReload(I)V
    .registers 2

    iget-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity$1;->this$0:Lcom/nettv/livestore/activities/SettingActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/SettingActivity;->addPlaylistDlgFragment:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public onSkip()V
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$1;->this$0:Lcom/nettv/livestore/activities/SettingActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SettingActivity;->addPlaylistDlgFragment:Lcom/nettv/livestore/dlgfragment/AddPlaylistDlgFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
