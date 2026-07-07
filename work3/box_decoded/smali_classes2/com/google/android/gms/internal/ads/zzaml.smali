.class public final Lcom/google/android/gms/internal/ads/zzaml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final zzdkb:Lcom/google/android/gms/ads/internal/util/zzau;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzau<",
            "Lcom/google/android/gms/internal/ads/zzako;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdkc:Lcom/google/android/gms/ads/internal/util/zzau;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/util/zzau<",
            "Lcom/google/android/gms/internal/ads/zzako;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzdkd:Lcom/google/android/gms/internal/ads/zzalb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaml;->zzdkb:Lcom/google/android/gms/ads/internal/util/zzau;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaml;->zzdkc:Lcom/google/android/gms/ads/internal/util/zzau;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzalb;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzaml;->zzdkb:Lcom/google/android/gms/ads/internal/util/zzau;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzaml;->zzdkc:Lcom/google/android/gms/ads/internal/util/zzau;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzalb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzau;Lcom/google/android/gms/ads/internal/util/zzau;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzdkd:Lcom/google/android/gms/internal/ads/zzalb;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzamd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzame<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzamf<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzamd<",
            "TI;TO;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzdkd:Lcom/google/android/gms/internal/ads/zzalb;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamm;-><init>(Lcom/google/android/gms/internal/ads/zzalb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzamf;)V

    return-object v0
.end method

.method public final zzua()Lcom/google/android/gms/internal/ads/zzamq;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzdkd:Lcom/google/android/gms/internal/ads/zzalb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamq;-><init>(Lcom/google/android/gms/internal/ads/zzalb;)V

    return-object v0
.end method
