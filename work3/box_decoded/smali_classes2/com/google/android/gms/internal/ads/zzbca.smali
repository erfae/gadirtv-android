.class public final Lcom/google/android/gms/internal/ads/zzbca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhg;
.implements Lcom/google/android/gms/internal/ads/zzih;
.implements Lcom/google/android/gms/internal/ads/zzmz;
.implements Lcom/google/android/gms/internal/ads/zzpd;
.implements Lcom/google/android/gms/internal/ads/zzqg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzhg;",
        "Lcom/google/android/gms/internal/ads/zzih;",
        "Lcom/google/android/gms/internal/ads/zzmz;",
        "Lcom/google/android/gms/internal/ads/zzpd<",
        "Lcom/google/android/gms/internal/ads/zzon;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzqg;"
    }
.end annotation


# static fields
.field private static zzems:I

.field private static zzemt:I


# instance fields
.field private bytesTransferred:I

.field private final context:Landroid/content/Context;

.field private zzblp:I

.field private final zzbvf:Ljava/lang/String;

.field private final zzbvg:I

.field private final zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

.field private final zzemu:Lcom/google/android/gms/internal/ads/zzbcb;

.field private final zzemv:Lcom/google/android/gms/internal/ads/zzhy;

.field private final zzemw:Lcom/google/android/gms/internal/ads/zzhy;

.field private final zzemx:Lcom/google/android/gms/internal/ads/zzob;

.field private zzemy:Lcom/google/android/gms/internal/ads/zzhd;

.field private zzemz:Ljava/nio/ByteBuffer;

.field private zzena:Z

.field private final zzenb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzbbe;",
            ">;"
        }
    .end annotation
.end field

.field private zzenc:Lcom/google/android/gms/internal/ads/zzbck;

.field private zzend:J

.field private final zzene:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzot;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzenf:Lcom/google/android/gms/internal/ads/zzbbw;

.field private zzeng:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzbbu;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbf;Lcom/google/android/gms/internal/ads/zzbbe;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzeng:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    .line 5
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenb:Ljava/lang/ref/WeakReference;

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbcb;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemu:Lcom/google/android/gms/internal/ads/zzbcb;

    .line 8
    new-instance v8, Lcom/google/android/gms/internal/ads/zzqa;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzlx;->zzbcu:Lcom/google/android/gms/internal/ads/zzlx;

    sget-object v5, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    const-wide/16 v3, 0x0

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzqa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzlx;JLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzqg;I)V

    .line 9
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemv:Lcom/google/android/gms/internal/ads/zzhy;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzjc;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzlx;->zzbcu:Lcom/google/android/gms/internal/ads/zzlx;

    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzjc;-><init>(Lcom/google/android/gms/internal/ads/zzlx;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzih;)V

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemw:Lcom/google/android/gms/internal/ads/zzhy;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zznw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zznw;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemx:Lcom/google/android/gms/internal/ads/zzob;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzd;->zzxn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ExoPlayerAdapter initialize "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    .line 19
    :cond_0
    sget v1, Lcom/google/android/gms/internal/ads/zzbca;->zzems:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/google/android/gms/internal/ads/zzbca;->zzems:I

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzhy;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    aput-object v8, v1, v2

    .line 20
    invoke-static {v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzhh;->zza([Lcom/google/android/gms/internal/ads/zzhy;Lcom/google/android/gms/internal/ads/zzoh;Lcom/google/android/gms/internal/ads/zzht;)Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    .line 22
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzhd;->zza(Lcom/google/android/gms/internal/ads/zzhg;)V

    .line 23
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzbca;->bytesTransferred:I

    const-wide/16 p1, 0x0

    .line 24
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzend:J

    .line 25
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzblp:I

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzene:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenf:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz p3, :cond_1

    .line 29
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbbe;->zzaal()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbbe;->zzaal()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzbvf:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 30
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbbe;->zzaam()I

    move-result v3

    :cond_2
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzbvg:I

    return-void
.end method

.method private final zzabl()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenf:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenf:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzabl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static zzabq()I
    .locals 1

    .line 33
    sget v0, Lcom/google/android/gms/internal/ads/zzbca;->zzems:I

    return v0
.end method

.method public static zzabr()I
    .locals 1

    .line 34
    sget v0, Lcom/google/android/gms/internal/ads/zzbca;->zzemt:I

    return v0
.end method

.method private final zzb(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzna;
    .locals 10

    .line 169
    new-instance v9, Lcom/google/android/gms/internal/ads/zzmw;

    .line 171
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzena:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemz:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_1

    .line 172
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemz:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemz:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 174
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcc;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzbcc;-><init>([B)V

    :cond_0
    :goto_0
    move-object v2, v0

    goto :goto_2

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzekz:I

    if-lez v0, :cond_2

    .line 176
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcf;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzbcf;-><init>(Lcom/google/android/gms/internal/ads/zzbca;Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbce;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzbce;-><init>(Lcom/google/android/gms/internal/ads/zzbca;Ljava/lang/String;)V

    .line 178
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzbbf;->zzela:Z

    if-eqz p2, :cond_3

    .line 180
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbch;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzbch;-><init>(Lcom/google/android/gms/internal/ads/zzbca;Lcom/google/android/gms/internal/ads/zzom;)V

    move-object v0, p2

    .line 181
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemz:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    if-lez p2, :cond_0

    .line 182
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemz:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    .line 183
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemz:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 185
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>(Lcom/google/android/gms/internal/ads/zzom;[B)V

    move-object v0, v1

    goto :goto_0

    .line 187
    :goto_2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabf;->zzcme:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 188
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 189
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 190
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbcj;->zzenr:Lcom/google/android/gms/internal/ads/zzkb;

    goto :goto_3

    .line 191
    :cond_4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzenr:Lcom/google/android/gms/internal/ads/zzkb;

    :goto_3
    move-object v3, p2

    .line 192
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzbbf;->zzelb:I

    sget-object v5, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    const/4 v7, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget v8, p2, Lcom/google/android/gms/internal/ads/zzbbf;->zzekx:I

    move-object v0, v9

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzmw;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzom;Lcom/google/android/gms/internal/ads/zzkb;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzmz;Ljava/lang/String;I)V

    return-object v9
.end method

.method private static zzk(Ljava/util/Map;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 36
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 38
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "content-length"

    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdve;->zza(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 194
    sget v0, Lcom/google/android/gms/internal/ads/zzbca;->zzems:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/zzbca;->zzems:I

    .line 195
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzd;->zzxn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ExoPlayerAdapter finalize "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getBytesTransferred()J
    .locals 2

    .line 73
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->bytesTransferred:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getTotalBytes()J
    .locals 4

    .line 87
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzene:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzend:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzene:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 90
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzot;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzot;->getResponseHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbca;->zzk(Ljava/util/Map;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzend:J

    goto :goto_0

    .line 91
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzend:J

    return-wide v0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenf:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final release()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzb(Lcom/google/android/gms/internal/ads/zzhg;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhd;->release()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    .line 71
    sget v0, Lcom/google/android/gms/internal/ads/zzbca;->zzemt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/zzbca;->zzemt:I

    :cond_0
    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzom;)Lcom/google/android/gms/internal/ads/zzon;
    .locals 8

    .line 221
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbbw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbca;->context:Landroid/content/Context;

    .line 222
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzom;->zzip()Lcom/google/android/gms/internal/ads/zzon;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzbvf:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzbvg:I

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/zzbcl;-><init>(Lcom/google/android/gms/internal/ads/zzbca;)V

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbbw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzon;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzpd;Lcom/google/android/gms/internal/ads/zzbby;)V

    return-object v7
.end method

.method public final zza(IIIF)V
    .locals 0

    .line 113
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenc:Lcom/google/android/gms/internal/ads/zzbck;

    if-eqz p3, :cond_0

    .line 114
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzbck;->zzn(II)V

    :cond_0
    return-void
.end method

.method public final zza(IJJ)V
    .locals 0

    return-void
.end method

.method public final zza(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method final zza(Landroid/view/Surface;Z)V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemv:Lcom/google/android/gms/internal/ads/zzhy;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Lcom/google/android/gms/internal/ads/zzhf;ILjava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 153
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    new-array v1, v2, [Lcom/google/android/gms/internal/ads/zzhi;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzhd;->zzb([Lcom/google/android/gms/internal/ads/zzhi;)V

    return-void

    .line 154
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    new-array v1, v2, [Lcom/google/android/gms/internal/ads/zzhi;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzhd;->zza([Lcom/google/android/gms/internal/ads/zzhi;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbck;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenc:Lcom/google/android/gms/internal/ads/zzbck;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhe;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenc:Lcom/google/android/gms/internal/ads/zzbck;

    if-eqz v0, :cond_0

    const-string v1, "onPlayerError"

    .line 139
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbck;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhv;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhz;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjm;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zznq;Lcom/google/android/gms/internal/ads/zzoe;)V
    .locals 0

    return-void
.end method

.method public final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzoo;)V
    .locals 2

    .line 202
    check-cast p1, Lcom/google/android/gms/internal/ads/zzon;

    .line 203
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzot;

    if-eqz p2, :cond_0

    .line 204
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzene:Ljava/util/ArrayList;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzot;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 205
    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz p2, :cond_1

    .line 206
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenf:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 207
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenb:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbe;

    .line 208
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabf;->zzcqn:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 209
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 210
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenf:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 211
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbbw;->zzmy()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 212
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenf:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 214
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zznb()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcacheHit"

    .line 215
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenf:Lcom/google/android/gms/internal/ads/zzbbw;

    .line 217
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzabm()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcacheDownloaded"

    .line 218
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzm;->zzedd:Lcom/google/android/gms/internal/ads/zzduw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbcd;-><init>(Lcom/google/android/gms/internal/ads/zzbbe;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzduw;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final zza(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public final zza(ZI)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenc:Lcom/google/android/gms/internal/ads/zzbck;

    if-eqz p1, :cond_0

    .line 136
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbck;->zzdr(I)V

    :cond_0
    return-void
.end method

.method public final zza([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 49
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzbca;->zza([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final zza([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemz:Ljava/nio/ByteBuffer;

    .line 54
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzena:Z

    .line 55
    array-length p3, p1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 56
    aget-object p1, p1, p4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbca;->zzb(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzna;

    move-result-object p1

    goto :goto_1

    .line 58
    :cond_1
    array-length p3, p1

    new-array p3, p3, [Lcom/google/android/gms/internal/ads/zzna;

    .line 59
    :goto_0
    array-length v1, p1

    if-ge p4, v1, :cond_2

    .line 60
    aget-object v1, p1, p4

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/ads/zzbca;->zzb(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzna;

    move-result-object v1

    aput-object v1, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 62
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zznf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zznf;-><init>([Lcom/google/android/gms/internal/ads/zzna;)V

    .line 64
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzhd;->zza(Lcom/google/android/gms/internal/ads/zzna;)V

    .line 65
    sget p1, Lcom/google/android/gms/internal/ads/zzbca;->zzemt:I

    add-int/2addr p1, v0

    sput p1, Lcom/google/android/gms/internal/ads/zzbca;->zzemt:I

    return-void
.end method

.method public final zzabp()Lcom/google/android/gms/internal/ads/zzhd;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    return-object v0
.end method

.method public final zzabs()Lcom/google/android/gms/internal/ads/zzbcb;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemu:Lcom/google/android/gms/internal/ads/zzbcb;

    return-object v0
.end method

.method final zzav(Z)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhd;->zzel()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemx:Lcom/google/android/gms/internal/ads/zzob;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzob;->zzf(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final zzb(FZ)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemw:Lcom/google/android/gms/internal/ads/zzhy;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Lcom/google/android/gms/internal/ads/zzhf;ILjava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 160
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzhi;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzhd;->zzb([Lcom/google/android/gms/internal/ads/zzhi;)V

    return-void

    .line 161
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzemy:Lcom/google/android/gms/internal/ads/zzhd;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzhi;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzhd;->zza([Lcom/google/android/gms/internal/ads/zzhi;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhp;)V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbe;

    .line 122
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcqn:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 123
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 126
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzagz:Ljava/lang/String;

    const-string v3, "audioMime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzagx:Ljava/lang/String;

    const-string v2, "audioCodec"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onMetadataEvent"

    .line 128
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbbe;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzjm;)V
    .locals 0

    return-void
.end method

.method public final zzb(Ljava/io/IOException;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenc:Lcom/google/android/gms/internal/ads/zzbck;

    if-eqz v0, :cond_0

    const-string v1, "onLoadError"

    .line 95
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbck;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final synthetic zzc(Ljava/lang/Object;I)V
    .locals 0

    .line 200
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->bytesTransferred:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->bytesTransferred:I

    return-void
.end method

.method public final zzd(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method final synthetic zzd(ZJ)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenc:Lcom/google/android/gms/internal/ads/zzbck;

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbck;->zzb(ZJ)V

    :cond_0
    return-void
.end method

.method public final zzdp(I)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzeng:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 144
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbbu;

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbbu;->setReceiveBufferSize(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzjm;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zze(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final zzen()V
    .locals 0

    return-void
.end method

.method public final zzf(IJ)V
    .locals 0

    .line 111
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzblp:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzblp:I

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzjm;)V
    .locals 0

    return-void
.end method

.method final synthetic zzfh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzon;
    .locals 9

    .line 227
    new-instance v8, Lcom/google/android/gms/internal/ads/zzoq;

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzela:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzeku:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzekw:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpp;Lcom/google/android/gms/internal/ads/zzpd;IIZLcom/google/android/gms/internal/ads/zzox;)V

    return-object v8
.end method

.method final synthetic zzfi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzon;
    .locals 7

    .line 230
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbbu;

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzela:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzeku:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzekw:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzelt:Lcom/google/android/gms/internal/ads/zzbbf;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzbbf;->zzekz:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbbu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpd;III)V

    .line 232
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzeng:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public final zzg(Z)V
    .locals 0

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzhp;)V
    .locals 6

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbe;

    .line 100
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcqn:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 101
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 102
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzahe:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "frameRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzagw:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bitRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzhp;->width:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzhp;->height:I

    const/16 v4, 0x17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resolution"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzagz:Ljava/lang/String;

    const-string v3, "videoMime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzagx:Ljava/lang/String;

    const-string v2, "videoCodec"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onMetadataEvent"

    .line 109
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbbe;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final zzna()J
    .locals 4

    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabl()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenf:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zznb()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    .line 85
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->bytesTransferred:I

    int-to-long v0, v0

    .line 86
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzenf:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbbw;->zzna()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzw(I)V
    .locals 0

    return-void
.end method

.method public final zzzo()J
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbca;->zzabl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->bytesTransferred:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzzp()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbca;->zzblp:I

    return v0
.end method
