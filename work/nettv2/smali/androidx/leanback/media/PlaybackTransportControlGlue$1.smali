.class Landroidx/leanback/media/PlaybackTransportControlGlue$1;
.super Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter;
.source "PlaybackTransportControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/media/PlaybackTransportControlGlue;->onCreateRowPresenter()Landroidx/leanback/widget/PlaybackRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBindDescription(Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Landroidx/leanback/media/PlaybackBaseControlGlue;

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/leanback/media/PlaybackBaseControlGlue;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Landroidx/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getSubtitle()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/leanback/media/PlaybackBaseControlGlue;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
