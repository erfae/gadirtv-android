.class public final Lcom/google/android/gms/internal/ads/zzdhn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

.field private final zzgon:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzatl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhn;->zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdhn;->zzgon:I

    return-void
.end method


# virtual methods
.method public final zzatj()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhn;->zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatl;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final zzatk()Ljava/lang/String;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhn;->zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatl;->zzdvx:Landroid/os/Bundle;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzatl()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhn;->zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatl;->zzdss:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public final zzatm()Z
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhn;->zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzatl;->zzdvy:Z

    return v0
.end method

.method public final zzatn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhn;->zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatl;->zzdtc:Ljava/util/List;

    return-object v0
.end method

.method public final zzato()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhn;->zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatl;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public final zzatp()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhn;->zzgnh:Lcom/google/android/gms/internal/ads/zzatl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatl;->zzdvz:Ljava/lang/String;

    return-object v0
.end method

.method public final zzatq()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdhn;->zzgon:I

    return v0
.end method
