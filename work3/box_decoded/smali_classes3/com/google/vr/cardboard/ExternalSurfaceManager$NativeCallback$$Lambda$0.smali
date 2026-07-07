.class final synthetic Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback$$Lambda$0;->arg$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-wide v0, p0, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback$$Lambda$0;->arg$1:J

    invoke-static {v0, v1}, Lcom/google/vr/cardboard/ExternalSurfaceManager$NativeCallback;->lambda$new$0$ExternalSurfaceManager$NativeCallback(J)V

    return-void
.end method
