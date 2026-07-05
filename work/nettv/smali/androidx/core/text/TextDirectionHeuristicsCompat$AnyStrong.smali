.class Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"

# interfaces
.implements Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/TextDirectionHeuristicsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnyStrong"
.end annotation


# static fields
.field public static final INSTANCE_RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;


# instance fields
.field private final mLookForRtl:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;-><init>(Z)V

    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->INSTANCE_RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 5

    add-int/2addr p3, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge p2, p3, :cond_5

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v3

    sget-object v4, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-eq v3, v4, :cond_0

    if-eq v3, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    goto :goto_2

    .line 2
    :cond_2
    iget-boolean v1, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    if-nez v1, :cond_4

    return v4

    .line 3
    :cond_3
    iget-boolean v1, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    if-eqz v1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 4
    iget-boolean p1, p0, Landroidx/core/text/TextDirectionHeuristicsCompat$AnyStrong;->mLookForRtl:Z

    return p1

    :cond_6
    return v2
.end method
