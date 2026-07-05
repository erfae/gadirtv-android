.class final Landroidx/leanback/widget/StreamingTextView$1;
.super Landroid/util/Property;
.source "StreamingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/StreamingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroidx/leanback/widget/StreamingTextView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Ljava/lang/Integer;

    const-string/jumbo v1, "streamPosition"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroidx/leanback/widget/StreamingTextView;)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/widget/StreamingTextView;->getStreamPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/leanback/widget/StreamingTextView;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StreamingTextView$1;->get(Landroidx/leanback/widget/StreamingTextView;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroidx/leanback/widget/StreamingTextView;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/StreamingTextView;->setStreamPosition(I)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/leanback/widget/StreamingTextView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StreamingTextView$1;->set(Landroidx/leanback/widget/StreamingTextView;Ljava/lang/Integer;)V

    return-void
.end method
