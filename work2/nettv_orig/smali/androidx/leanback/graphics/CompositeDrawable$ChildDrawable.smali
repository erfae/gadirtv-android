.class public final Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "CompositeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/graphics/CompositeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChildDrawable"
.end annotation


# static fields
.field public static final BOTTOM_ABSOLUTE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOTTOM_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEFT_ABSOLUTE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEFT_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final RIGHT_ABSOLUTE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RIGHT_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOP_ABSOLUTE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOP_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final adjustedBounds:Landroid/graphics/Rect;

.field private final mBoundsRule:Landroidx/leanback/graphics/BoundsRule;

.field public final mDrawable:Landroid/graphics/drawable/Drawable;

.field public final mParent:Landroidx/leanback/graphics/CompositeDrawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$1;

    invoke-direct {v0}, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$1;-><init>()V

    sput-object v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->TOP_ABSOLUTE:Landroid/util/Property;

    .line 2
    new-instance v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$2;

    invoke-direct {v0}, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$2;-><init>()V

    sput-object v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->BOTTOM_ABSOLUTE:Landroid/util/Property;

    .line 3
    new-instance v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$3;

    invoke-direct {v0}, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$3;-><init>()V

    sput-object v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->LEFT_ABSOLUTE:Landroid/util/Property;

    .line 4
    new-instance v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$4;

    invoke-direct {v0}, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$4;-><init>()V

    sput-object v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->RIGHT_ABSOLUTE:Landroid/util/Property;

    .line 5
    new-instance v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$5;

    invoke-direct {v0}, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$5;-><init>()V

    sput-object v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->TOP_FRACTION:Landroid/util/Property;

    .line 6
    new-instance v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$6;

    invoke-direct {v0}, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$6;-><init>()V

    sput-object v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->BOTTOM_FRACTION:Landroid/util/Property;

    .line 7
    new-instance v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$7;

    invoke-direct {v0}, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$7;-><init>()V

    sput-object v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->LEFT_FRACTION:Landroid/util/Property;

    .line 8
    new-instance v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$8;

    invoke-direct {v0}, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable$8;-><init>()V

    sput-object v0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->RIGHT_FRACTION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroidx/leanback/graphics/CompositeDrawable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->adjustedBounds:Landroid/graphics/Rect;

    .line 3
    iput-object p1, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object p2, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mParent:Landroidx/leanback/graphics/CompositeDrawable;

    .line 5
    new-instance v0, Landroidx/leanback/graphics/BoundsRule;

    invoke-direct {v0}, Landroidx/leanback/graphics/BoundsRule;-><init>()V

    iput-object v0, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mBoundsRule:Landroidx/leanback/graphics/BoundsRule;

    .line 6
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;Landroidx/leanback/graphics/CompositeDrawable;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->adjustedBounds:Landroid/graphics/Rect;

    .line 9
    iget-object v0, p1, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 12
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 13
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object p1, p1, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mBoundsRule:Landroidx/leanback/graphics/BoundsRule;

    if-eqz p1, :cond_1

    .line 17
    new-instance v0, Landroidx/leanback/graphics/BoundsRule;

    invoke-direct {v0, p1}, Landroidx/leanback/graphics/BoundsRule;-><init>(Landroidx/leanback/graphics/BoundsRule;)V

    iput-object v0, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mBoundsRule:Landroidx/leanback/graphics/BoundsRule;

    goto :goto_1

    .line 18
    :cond_1
    new-instance p1, Landroidx/leanback/graphics/BoundsRule;

    invoke-direct {p1}, Landroidx/leanback/graphics/BoundsRule;-><init>()V

    iput-object p1, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mBoundsRule:Landroidx/leanback/graphics/BoundsRule;

    .line 19
    :goto_1
    iput-object v1, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object p2, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mParent:Landroidx/leanback/graphics/CompositeDrawable;

    return-void
.end method


# virtual methods
.method public getBoundsRule()Landroidx/leanback/graphics/BoundsRule;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mBoundsRule:Landroidx/leanback/graphics/BoundsRule;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public recomputeBounds()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mParent:Landroidx/leanback/graphics/CompositeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mBoundsRule:Landroidx/leanback/graphics/BoundsRule;

    iget-object v2, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->adjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroidx/leanback/graphics/BoundsRule;->calculateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3
    iget-object v0, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->adjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final updateBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mBoundsRule:Landroidx/leanback/graphics/BoundsRule;

    iget-object v1, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->adjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroidx/leanback/graphics/BoundsRule;->calculateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroidx/leanback/graphics/CompositeDrawable$ChildDrawable;->adjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method
