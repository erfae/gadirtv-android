.class public interface abstract Lcom/google/android/exoplayer2/util/DebugViewProvider;
.super Ljava/lang/Object;
.source "DebugViewProvider.java"


# static fields
.field public static final NONE:Lcom/google/android/exoplayer2/util/DebugViewProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/realm/Realm$$ExternalSyntheticLambda0;->INSTANCE$11:Lio/realm/Realm$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/google/android/exoplayer2/util/DebugViewProvider;->NONE:Lcom/google/android/exoplayer2/util/DebugViewProvider;

    return-void
.end method


# virtual methods
.method public abstract getDebugPreviewSurfaceView(II)Landroid/view/SurfaceView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
