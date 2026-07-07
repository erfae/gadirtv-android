.class public final Lcom/google/android/gms/internal/ads/zzbqz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final zzbos:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzdss:Landroid/content/pm/PackageInfo;

.field private final zzdtc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdvz:Ljava/lang/String;

.field private final zzebt:Lcom/google/android/gms/ads/internal/util/zzf;

.field private final zzfvm:Lcom/google/android/gms/internal/ads/zzdro;

.field private final zzfww:Landroid/content/pm/ApplicationInfo;

.field private final zzfwx:Lcom/google/android/gms/internal/ads/zzeoz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeoz<",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdfl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdfl<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdro;Lcom/google/android/gms/internal/ads/zzazh;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/zzeoz;Lcom/google/android/gms/ads/internal/util/zzf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdfl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdro;",
            "Lcom/google/android/gms/internal/ads/zzazh;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Lcom/google/android/gms/internal/ads/zzeoz<",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/gms/ads/internal/util/zzf;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzdfl<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzfvm:Lcom/google/android/gms/internal/ads/zzdro;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzfww:Landroid/content/pm/ApplicationInfo;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbqz;->packageName:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzdtc:Ljava/util/List;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzdss:Landroid/content/pm/PackageInfo;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzfwx:Lcom/google/android/gms/internal/ads/zzeoz;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzebt:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzdvz:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzfwy:Lcom/google/android/gms/internal/ads/zzdfl;

    return-void
.end method


# virtual methods
.method public final zzakq()Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzfvm:Lcom/google/android/gms/internal/ads/zzdro;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrl;->zzhob:Lcom/google/android/gms/internal/ads/zzdrl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdra;->zzu(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdre;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzfwy:Lcom/google/android/gms/internal/ads/zzdfl;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdfl;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdre;->zze(Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrg;->zzaww()Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object v0

    return-object v0
.end method

.method public final zzakr()Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Lcom/google/android/gms/internal/ads/zzatl;",
            ">;"
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbqz;->zzakq()Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzfvm:Lcom/google/android/gms/internal/ads/zzdro;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrl;->zzhoc:Lcom/google/android/gms/internal/ads/zzdrl;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzdyz;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzfwx:Lcom/google/android/gms/internal/ads/zzeoz;

    .line 16
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzeoz;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdyz;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdra;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbrc;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzbrc;-><init>(Lcom/google/android/gms/internal/ads/zzbqz;Lcom/google/android/gms/internal/ads/zzdyz;)V

    .line 17
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdrc;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrg;->zzaww()Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzatl;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    new-instance v12, Lcom/google/android/gms/internal/ads/zzatl;

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzbos:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzfww:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbqz;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzdtc:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzdss:Landroid/content/pm/PackageInfo;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzfwx:Lcom/google/android/gms/internal/ads/zzeoz;

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeoz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdyz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzebt:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzxt()Z

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzbqz;->zzdvz:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzatl;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzazh;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;)V

    return-object v12
.end method
