.class public interface abstract Lcom/google/vr/sdk/widgets/video/deps/kp;
.super Ljava/lang/Object;
.source "HlsExtractorFactory.java"


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/kp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/km;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/km;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/kp;->a:Lcom/google/vr/sdk/widgets/video/deps/kp;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/vr/sdk/widgets/video/deps/cr;Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/pp;Ljava/util/Map;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/cr;",
            "Landroid/net/Uri;",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            "Lcom/google/vr/sdk/widgets/video/deps/pp;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Lcom/google/vr/sdk/widgets/video/deps/cr;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
