.class final Lcom/bumptech/glide/GlideExperiments$Builder;
.super Ljava/lang/Object;
.source "GlideExperiments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/GlideExperiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final experiments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/GlideExperiments$Experiment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/GlideExperiments$Builder;->experiments:Ljava/util/Map;

    return-void
.end method

.method public static synthetic access$000(Lcom/bumptech/glide/GlideExperiments$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/GlideExperiments$Builder;->experiments:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final update(Lcom/bumptech/glide/GlideExperiments$Experiment;Z)Lcom/bumptech/glide/GlideExperiments$Builder;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/bumptech/glide/GlideExperiments$Builder;->experiments:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/bumptech/glide/GlideExperiments$Builder;->experiments:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method
