.class Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;
.super Ljava/lang/Object;
.source "PlaybackTransportRowPresenter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;-><init>(Landroidx/leanback/widget/PlaybackTransportRowPresenter;Landroid/view/View;Landroidx/leanback/widget/Presenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p1, :cond_9

    const/16 p1, 0x42

    if-eq p2, p1, :cond_6

    const/16 p1, 0x45

    if-eq p2, p1, :cond_3

    const/16 p1, 0x51

    if-eq p2, p1, :cond_0

    const/16 p1, 0x6f

    if-eq p2, p1, :cond_9

    const/16 p1, 0x59

    if-eq p2, p1, :cond_3

    const/16 p1, 0x5a

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    return v0

    .line 1
    :pswitch_0
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-boolean p1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    return p1

    .line 2
    :cond_0
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    .line 4
    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->startSeek()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->updateProgressInSeek(Z)V

    :cond_2
    :goto_0
    return v1

    .line 6
    :cond_3
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_5

    .line 7
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    .line 8
    invoke-virtual {p1}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->startSeek()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->updateProgressInSeek(Z)V

    :cond_5
    :goto_1
    return v1

    .line 10
    :cond_6
    :pswitch_3
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-boolean p1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    if-nez p1, :cond_7

    return v0

    .line 11
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 12
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->stopSeek(Z)V

    :cond_8
    return v1

    .line 13
    :cond_9
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-boolean p1, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    if-nez p1, :cond_a

    return v0

    .line 14
    :cond_a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_b

    .line 15
    iget-object p1, p0, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;->this$1:Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object p2, p1, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroidx/leanback/widget/SeekBar;

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result p2

    xor-int/2addr p2, v1

    .line 17
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->stopSeek(Z)V

    :cond_b
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
