.class final Landroidx/leanback/graphics/FitWidthBitmapDrawable$2;
.super Landroid/util/IntProperty;
.source "FitWidthBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Landroidx/leanback/graphics/FitWidthBitmapDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "verticalOffset"

    invoke-direct {p0, v0}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroidx/leanback/graphics/FitWidthBitmapDrawable;)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->getVerticalOffset()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/leanback/graphics/FitWidthBitmapDrawable;

    invoke-virtual {p0, p1}, Landroidx/leanback/graphics/FitWidthBitmapDrawable$2;->get(Landroidx/leanback/graphics/FitWidthBitmapDrawable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroidx/leanback/graphics/FitWidthBitmapDrawable;I)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->setVerticalOffset(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/leanback/graphics/FitWidthBitmapDrawable;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/graphics/FitWidthBitmapDrawable$2;->setValue(Landroidx/leanback/graphics/FitWidthBitmapDrawable;I)V

    return-void
.end method
