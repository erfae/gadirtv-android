.class final Lcom/google/android/play/core/internal/zzbm;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/zzaz;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .registers 4

    new-instance v0, Lcom/google/android/play/core/internal/zzbi;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/zzbi;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/google/android/play/core/internal/zzbk;->zzc(Ljava/lang/ClassLoader;Ljava/util/Set;Lcom/google/android/play/core/internal/zzbj;)V

    return-void
.end method

.method public final zzb(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z
    .registers 6

    const-string v0, "zip"

    invoke-static {p1, p2, p3, p4, v0}, Lcom/google/android/play/core/internal/zzbk;->zzd(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method
