.class public final Lcom/google/android/gms/internal/ads/zzwq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# static fields
.field private static zzciw:Lcom/google/android/gms/internal/ads/zzwq;


# instance fields
.field private final zzcix:Lcom/google/android/gms/internal/ads/zzayr;

.field private final zzciy:Lcom/google/android/gms/internal/ads/zzvx;

.field private final zzciz:Ljava/lang/String;

.field private final zzcja:Lcom/google/android/gms/internal/ads/zzaaw;

.field private final zzcjb:Lcom/google/android/gms/internal/ads/zzaay;

.field private final zzcjc:Lcom/google/android/gms/internal/ads/zzabb;

.field private final zzcjd:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzcje:Ljava/util/Random;

.field private final zzcjf:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/google/android/gms/ads/query/QueryInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzwq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwq;->zzciw:Lcom/google/android/gms/internal/ads/zzwq;

    return-void
.end method

.method protected constructor <init>()V
    .locals 12

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzayr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzayr;-><init>()V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzvx;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzvi;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzvi;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzvf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzvf;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzzp;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzzp;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzagn;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzagn;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzaut;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzaut;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzavx;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzavx;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzarh;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzarh;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzagm;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzagm;-><init>()V

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzvx;-><init>(Lcom/google/android/gms/internal/ads/zzvi;Lcom/google/android/gms/internal/ads/zzvf;Lcom/google/android/gms/internal/ads/zzzp;Lcom/google/android/gms/internal/ads/zzagn;Lcom/google/android/gms/internal/ads/zzaut;Lcom/google/android/gms/internal/ads/zzavx;Lcom/google/android/gms/internal/ads/zzarh;Lcom/google/android/gms/internal/ads/zzagm;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaaw;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaay;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzaay;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzabb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzabb;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayr;->zzzf()Ljava/lang/String;

    move-result-object v6

    .line 3
    new-instance v7, Lcom/google/android/gms/internal/ads/zzazh;

    const/4 v0, 0x0

    const v2, 0xc1fb2e0

    const/4 v8, 0x1

    invoke-direct {v7, v0, v2, v8}, Lcom/google/android/gms/internal/ads/zzazh;-><init>(IIZ)V

    .line 4
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    new-instance v9, Ljava/util/WeakHashMap;

    invoke-direct {v9}, Ljava/util/WeakHashMap;-><init>()V

    move-object v0, p0

    move-object v2, v11

    .line 5
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzwq;-><init>(Lcom/google/android/gms/internal/ads/zzayr;Lcom/google/android/gms/internal/ads/zzvx;Lcom/google/android/gms/internal/ads/zzaaw;Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzabb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzazh;Ljava/util/Random;Ljava/util/WeakHashMap;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzayr;Lcom/google/android/gms/internal/ads/zzvx;Lcom/google/android/gms/internal/ads/zzaaw;Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzabb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzazh;Ljava/util/Random;Ljava/util/WeakHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzayr;",
            "Lcom/google/android/gms/internal/ads/zzvx;",
            "Lcom/google/android/gms/internal/ads/zzaaw;",
            "Lcom/google/android/gms/internal/ads/zzaay;",
            "Lcom/google/android/gms/internal/ads/zzabb;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzazh;",
            "Ljava/util/Random;",
            "Ljava/util/WeakHashMap<",
            "Lcom/google/android/gms/ads/query/QueryInfo;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzcix:Lcom/google/android/gms/internal/ads/zzayr;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzciy:Lcom/google/android/gms/internal/ads/zzvx;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzcja:Lcom/google/android/gms/internal/ads/zzaaw;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzcjb:Lcom/google/android/gms/internal/ads/zzaay;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzcjc:Lcom/google/android/gms/internal/ads/zzabb;

    .line 13
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzciz:Ljava/lang/String;

    .line 14
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzcjd:Lcom/google/android/gms/internal/ads/zzazh;

    .line 15
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzcje:Ljava/util/Random;

    .line 16
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzcjf:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static zzqa()Lcom/google/android/gms/internal/ads/zzayr;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwq;->zzciw:Lcom/google/android/gms/internal/ads/zzwq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwq;->zzcix:Lcom/google/android/gms/internal/ads/zzayr;

    return-object v0
.end method

.method public static zzqb()Lcom/google/android/gms/internal/ads/zzvx;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwq;->zzciw:Lcom/google/android/gms/internal/ads/zzwq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwq;->zzciy:Lcom/google/android/gms/internal/ads/zzvx;

    return-object v0
.end method

.method public static zzqc()Lcom/google/android/gms/internal/ads/zzaay;
    .locals 1

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwq;->zzciw:Lcom/google/android/gms/internal/ads/zzwq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwq;->zzcjb:Lcom/google/android/gms/internal/ads/zzaay;

    return-object v0
.end method

.method public static zzqd()Lcom/google/android/gms/internal/ads/zzaaw;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwq;->zzciw:Lcom/google/android/gms/internal/ads/zzwq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwq;->zzcja:Lcom/google/android/gms/internal/ads/zzaaw;

    return-object v0
.end method

.method public static zzqe()Lcom/google/android/gms/internal/ads/zzabb;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwq;->zzciw:Lcom/google/android/gms/internal/ads/zzwq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwq;->zzcjc:Lcom/google/android/gms/internal/ads/zzabb;

    return-object v0
.end method

.method public static zzqf()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwq;->zzciw:Lcom/google/android/gms/internal/ads/zzwq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwq;->zzciz:Ljava/lang/String;

    return-object v0
.end method

.method public static zzqg()Lcom/google/android/gms/internal/ads/zzazh;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwq;->zzciw:Lcom/google/android/gms/internal/ads/zzwq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwq;->zzcjd:Lcom/google/android/gms/internal/ads/zzazh;

    return-object v0
.end method

.method public static zzqh()Ljava/util/Random;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwq;->zzciw:Lcom/google/android/gms/internal/ads/zzwq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwq;->zzcje:Ljava/util/Random;

    return-object v0
.end method

.method public static zzqi()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Lcom/google/android/gms/ads/query/QueryInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzwq;->zzciw:Lcom/google/android/gms/internal/ads/zzwq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwq;->zzcjf:Ljava/util/WeakHashMap;

    return-object v0
.end method
