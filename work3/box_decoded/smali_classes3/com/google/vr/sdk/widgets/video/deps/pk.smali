.class final synthetic Lcom/google/vr/sdk/widgets/video/deps/pk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pk;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/pk;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/pk;->a:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/pi$a;

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/pi$a;

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pi;->a(Lcom/google/vr/sdk/widgets/video/deps/pi$a;Lcom/google/vr/sdk/widgets/video/deps/pi$a;)I

    move-result p1

    return p1
.end method
