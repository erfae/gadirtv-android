.class final Lcom/google/vr/sdk/widgets/video/deps/nb$a;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/nb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/vr/sdk/widgets/video/deps/l;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nb$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/nb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;)I
    .locals 0

    .line 2
    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    sub-int/2addr p2, p1

    return p2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/l;

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/nb$a;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result p1

    return p1
.end method
