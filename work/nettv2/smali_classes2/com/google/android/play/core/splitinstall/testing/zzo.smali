.class final Lcom/google/android/play/core/splitinstall/testing/zzo;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/zzf;


# instance fields
.field public final synthetic zza:Ljava/util/List;

.field public final synthetic zzb:Ljava/util/List;

.field public final synthetic zzc:J

.field public final synthetic zzd:Z

.field public final synthetic zze:Ljava/util/List;

.field public final synthetic zzf:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;Ljava/util/List;Ljava/util/List;JZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zzf:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zza:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zzb:Ljava/util/List;

    iput-wide p4, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zzd:Z

    iput-object p7, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zze:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zzf:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zzb:Ljava/util/List;

    iget-wide v3, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zzc:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->zze(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;Ljava/util/List;Ljava/util/List;J)V

    return-void
.end method

.method public final zzb(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zzf:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    invoke-static {v0, p1}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->zzj(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;I)Z

    return-void
.end method

.method public final zzc()V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zzd:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zzf:Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zze:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zza:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zzb:Ljava/util/List;

    iget-wide v5, p0, Lcom/google/android/play/core/splitinstall/testing/zzo;->zzc:J

    invoke-static/range {v1 .. v6}, Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;->zzd(Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V

    :cond_0
    return-void
.end method
