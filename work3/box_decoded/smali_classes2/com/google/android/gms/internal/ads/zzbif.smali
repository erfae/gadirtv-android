.class final Lcom/google/android/gms/internal/ads/zzbif;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdlc;


# instance fields
.field private final synthetic zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

.field private zzflf:Landroid/content/Context;

.field private zzflg:Ljava/lang/String;

.field private zzfno:Lcom/google/android/gms/internal/ads/zzvn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;Lcom/google/android/gms/internal/ads/zzbhj;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbif;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;)V

    return-void
.end method


# virtual methods
.method public final zzahk()Lcom/google/android/gms/internal/ads/zzdld;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzflf:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzflg:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzfno:Lcom/google/android/gms/internal/ads/zzvn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzvn;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbie;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzflf:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzflg:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzfno:Lcom/google/android/gms/internal/ads/zzvn;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbie;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzbhj;)V

    return-object v0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzdlc;
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzfno:Lcom/google/android/gms/internal/ads/zzvn;

    return-object p0
.end method

.method public final synthetic zzca(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdlc;
    .locals 0

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzflf:Landroid/content/Context;

    return-object p0
.end method

.method public final synthetic zzfs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdlc;
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbif;->zzflg:Ljava/lang/String;

    return-object p0
.end method
