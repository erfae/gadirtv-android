.class public interface abstract Lcom/google/vr/sdk/widgets/video/deps/gm;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/gm;

.field public static final b:Lcom/google/vr/sdk/widgets/video/deps/gm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gm$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gm$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/gm;->a:Lcom/google/vr/sdk/widgets/video/deps/gm;

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gm$2;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gm$2;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/gm;->b:Lcom/google/vr/sdk/widgets/video/deps/gm;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/vr/sdk/widgets/video/deps/gk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/gn$b;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/gk;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/gn$b;
        }
    .end annotation
.end method
