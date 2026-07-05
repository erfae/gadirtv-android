.class Lcom/nettv/livestore/activities/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/PayForTvDlgFragment$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/SettingActivity;->showTVDeviceDlgFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/SettingActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/SettingActivity$3;->this$0:Lcom/nettv/livestore/activities/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 0

    return-void
.end method

.method public onOkClick(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/activities/SettingActivity$3;->this$0:Lcom/nettv/livestore/activities/SettingActivity;

    invoke-static {v0, p1}, Lcom/nettv/livestore/activities/SettingActivity;->access$102(Lcom/nettv/livestore/activities/SettingActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
