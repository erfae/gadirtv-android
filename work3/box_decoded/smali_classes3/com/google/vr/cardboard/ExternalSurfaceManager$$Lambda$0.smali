.class final synthetic Lcom/google/vr/cardboard/ExternalSurfaceManager$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurfaceConsumer;


# instance fields
.field private final arg$1:Lcom/google/vr/cardboard/ExternalSurfaceManager;


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/ExternalSurfaceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$$Lambda$0;->arg$1:Lcom/google/vr/cardboard/ExternalSurfaceManager;

    return-void
.end method


# virtual methods
.method public final accept(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$$Lambda$0;->arg$1:Lcom/google/vr/cardboard/ExternalSurfaceManager;

    invoke-virtual {v0, p1}, Lcom/google/vr/cardboard/ExternalSurfaceManager;->lambda$consumerUpdateManagedSurfaces$0$ExternalSurfaceManager(Lcom/google/vr/cardboard/ExternalSurfaceManager$ExternalSurface;)V

    return-void
.end method
