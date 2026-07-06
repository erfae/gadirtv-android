.class Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;
.super Landroidx/leanback/widget/Parallax$PropertyMarkerValue;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/Parallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatPropertyMarkerValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/leanback/widget/Parallax$PropertyMarkerValue<",
        "Landroidx/leanback/widget/Parallax$FloatProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFactionOfMax:F

.field private final mValue:F


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/Parallax$FloatProperty;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/Parallax$PropertyMarkerValue;-><init>(Ljava/lang/Object;)V

    .line 2
    iput p2, p0, Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;->mValue:F

    .line 3
    iput p3, p0, Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;->mFactionOfMax:F

    return-void
.end method


# virtual methods
.method public final getMarkerValue(Landroidx/leanback/widget/Parallax;)F
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;->mFactionOfMax:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p0, Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;->mValue:F

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;->mValue:F

    invoke-virtual {p1}, Landroidx/leanback/widget/Parallax;->getMaxValue()F

    move-result p1

    iget v1, p0, Landroidx/leanback/widget/Parallax$FloatPropertyMarkerValue;->mFactionOfMax:F

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    :goto_0
    return p1
.end method
