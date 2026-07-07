.class public final Lcom/google/android/gms/internal/cast/zzah;
.super Lcom/google/android/gms/cast/framework/SessionProvider;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# instance fields
.field private final zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zzna:Lcom/google/android/gms/internal/cast/zzax;

.field private final zznb:Lcom/google/android/gms/internal/cast/zzq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzax;)V
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getSupportedNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getSupportedNamespaces()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/SessionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzah;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzah;->zzna:Lcom/google/android/gms/internal/cast/zzax;

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/cast/zzac;

    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzac;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzah;->zznb:Lcom/google/android/gms/internal/cast/zzq;

    return-void
.end method


# virtual methods
.method public final createSession(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/Session;
    .locals 9

    .line 12
    new-instance v7, Lcom/google/android/gms/cast/framework/CastSession;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/SessionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/SessionProvider;->getCategory()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/cast/zzah;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzah;->zznb:Lcom/google/android/gms/internal/cast/zzq;

    new-instance v6, Lcom/google/android/gms/cast/framework/media/internal/zzk;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/SessionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzah;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    iget-object v8, p0, Lcom/google/android/gms/internal/cast/zzah;->zzna:Lcom/google/android/gms/internal/cast/zzax;

    invoke-direct {v6, v0, v3, v8}, Lcom/google/android/gms/cast/framework/media/internal/zzk;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzax;)V

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/CastSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/cast/zzq;Lcom/google/android/gms/cast/framework/media/internal/zzk;)V

    return-object v7
.end method

.method public final isSessionRecoverable()Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzah;->zzjz:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getResumeSavedSession()Z

    move-result v0

    return v0
.end method
