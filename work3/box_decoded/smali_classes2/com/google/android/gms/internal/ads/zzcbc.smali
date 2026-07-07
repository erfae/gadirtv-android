.class public final Lcom/google/android/gms/internal/ads/zzcbc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzepf<",
        "Lcom/google/android/gms/internal/ads/zzbod<",
        "Lcom/google/android/gms/internal/ads/zzbme;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfwv:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzbua;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgbf:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzbgm;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgbg:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzbrg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgbh:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzbwp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgbi:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzcap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzbgm;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzbrg$zza;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzbwp;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzcap;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzbua;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgbf:Lcom/google/android/gms/internal/ads/zzeps;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgbg:Lcom/google/android/gms/internal/ads/zzeps;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgbh:Lcom/google/android/gms/internal/ads/zzeps;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgbi:Lcom/google/android/gms/internal/ads/zzeps;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfwv:Lcom/google/android/gms/internal/ads/zzeps;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgbf:Lcom/google/android/gms/internal/ads/zzeps;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeps;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgbg:Lcom/google/android/gms/internal/ads/zzeps;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeps;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbrg$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgbh:Lcom/google/android/gms/internal/ads/zzeps;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzeps;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbwp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgbi:Lcom/google/android/gms/internal/ads/zzeps;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzeps;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcap;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfwv:Lcom/google/android/gms/internal/ads/zzeps;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzeps;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbua;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgm;->zzaer()Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object v0

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbrg$zza;->zzakx()Lcom/google/android/gms/internal/ads/zzbrg;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbmz;->zzd(Lcom/google/android/gms/internal/ads/zzbrg;)Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object v0

    .line 13
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbmz;->zzd(Lcom/google/android/gms/internal/ads/zzbwp;)Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object v0

    .line 14
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzbmz;->zzb(Lcom/google/android/gms/internal/ads/zzcap;)Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcwq;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcwq;-><init>(Lcom/google/android/gms/internal/ads/zzacb;)V

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbmz;->zza(Lcom/google/android/gms/internal/ads/zzcwq;)Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnv;

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzbnv;-><init>(Lcom/google/android/gms/internal/ads/zzbua;)V

    .line 16
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbmz;->zza(Lcom/google/android/gms/internal/ads/zzbnv;)Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzblz;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzblz;-><init>(Landroid/view/ViewGroup;)V

    .line 17
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbmz;->zzd(Lcom/google/android/gms/internal/ads/zzblz;)Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmz;->zzagz()Lcom/google/android/gms/internal/ads/zzbna;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbna;->zzagy()Lcom/google/android/gms/internal/ads/zzbod;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 20
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbod;

    return-object v0
.end method
