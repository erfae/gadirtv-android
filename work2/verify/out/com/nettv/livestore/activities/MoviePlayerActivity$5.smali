.class Lcom/nettv/livestore/activities/MoviePlayerActivity$5;
.super Ljava/lang/Object;
.source "MoviePlayerActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$OkButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/MoviePlayerActivity;->showPlayErrorDlgFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$5;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .registers 1

    return-void
.end method

.method public onOkClick()V
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$5;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
