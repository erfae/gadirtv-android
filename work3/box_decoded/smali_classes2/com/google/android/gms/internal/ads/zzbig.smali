.class final Lcom/google/android/gms/internal/ads/zzbig;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdmm;


# instance fields
.field private final synthetic zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

.field private zzfkw:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private zzfkx:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzfnl:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzdlf;",
            ">;"
        }
    .end annotation
.end field

.field private zzfnp:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzdkl<",
            "Lcom/google/android/gms/internal/ads/zzchf;",
            "Lcom/google/android/gms/internal/ads/zzchc;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzfnq:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzdni;",
            ">;"
        }
    .end annotation
.end field

.field private zzfnr:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzdma;",
            ">;"
        }
    .end annotation
.end field

.field private zzfns:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzdmo;",
            ">;"
        }
    .end annotation
.end field

.field private zzfnt:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzdmi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzepi;->zzbb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzepf;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfkw:Lcom/google/android/gms/internal/ads/zzeps;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhg;->zzap(Lcom/google/android/gms/internal/ads/zzbhg;)Lcom/google/android/gms/internal/ads/zzeps;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhg;->zzaq(Lcom/google/android/gms/internal/ads/zzbhg;)Lcom/google/android/gms/internal/ads/zzeps;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdkq;

    invoke-direct {v2, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdkq;-><init>(Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;)V

    .line 6
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfnp:Lcom/google/android/gms/internal/ads/zzeps;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhg;->zzap(Lcom/google/android/gms/internal/ads/zzbhg;)Lcom/google/android/gms/internal/ads/zzeps;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdly;->zzaq(Lcom/google/android/gms/internal/ads/zzeps;)Lcom/google/android/gms/internal/ads/zzdly;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzepg;->zzas(Lcom/google/android/gms/internal/ads/zzeps;)Lcom/google/android/gms/internal/ads/zzeps;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfnl:Lcom/google/android/gms/internal/ads/zzeps;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdnl;->zzaum()Lcom/google/android/gms/internal/ads/zzdnl;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzepg;->zzas(Lcom/google/android/gms/internal/ads/zzeps;)Lcom/google/android/gms/internal/ads/zzeps;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfnq:Lcom/google/android/gms/internal/ads/zzeps;

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfkw:Lcom/google/android/gms/internal/ads/zzeps;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhg;->zzaa(Lcom/google/android/gms/internal/ads/zzbhg;)Lcom/google/android/gms/internal/ads/zzeps;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhg;->zzv(Lcom/google/android/gms/internal/ads/zzbhg;)Lcom/google/android/gms/internal/ads/zzeps;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfnp:Lcom/google/android/gms/internal/ads/zzeps;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfnl:Lcom/google/android/gms/internal/ads/zzeps;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdno;->zzauo()Lcom/google/android/gms/internal/ads/zzdno;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfnq:Lcom/google/android/gms/internal/ads/zzeps;

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdmj;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdmj;-><init>(Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;)V

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepg;->zzas(Lcom/google/android/gms/internal/ads/zzeps;)Lcom/google/android/gms/internal/ads/zzeps;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfnr:Lcom/google/android/gms/internal/ads/zzeps;

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfnl:Lcom/google/android/gms/internal/ads/zzeps;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfnq:Lcom/google/android/gms/internal/ads/zzeps;

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmt;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdmt;-><init>(Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;)V

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzepg;->zzas(Lcom/google/android/gms/internal/ads/zzeps;)Lcom/google/android/gms/internal/ads/zzeps;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfns:Lcom/google/android/gms/internal/ads/zzeps;

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzepi;->zzbc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzepf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfkx:Lcom/google/android/gms/internal/ads/zzeps;

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfnr:Lcom/google/android/gms/internal/ads/zzeps;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfkw:Lcom/google/android/gms/internal/ads/zzeps;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfnl:Lcom/google/android/gms/internal/ads/zzeps;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfnq:Lcom/google/android/gms/internal/ads/zzeps;

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdmn;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdmn;-><init>(Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;)V

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepg;->zzas(Lcom/google/android/gms/internal/ads/zzeps;)Lcom/google/android/gms/internal/ads/zzeps;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfnt:Lcom/google/android/gms/internal/ads/zzeps;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhj;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbig;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzahl()Lcom/google/android/gms/internal/ads/zzdmo;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfns:Lcom/google/android/gms/internal/ads/zzeps;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeps;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdmo;

    return-object v0
.end method

.method public final zzahm()Lcom/google/android/gms/internal/ads/zzdmi;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbig;->zzfnt:Lcom/google/android/gms/internal/ads/zzeps;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeps;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdmi;

    return-object v0
.end method
