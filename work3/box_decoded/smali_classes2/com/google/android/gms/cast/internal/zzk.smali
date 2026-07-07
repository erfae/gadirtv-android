.class public Lcom/google/android/gms/cast/internal/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# instance fields
.field protected final zzabw:Lcom/google/android/gms/cast/internal/Logger;

.field private final zzabx:Ljava/lang/String;

.field private zzaby:Lcom/google/android/gms/cast/internal/zzan;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->throwIfInvalidNamespace(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzk;->zzabx:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/google/android/gms/cast/internal/Logger;

    invoke-direct {p1, p2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzk;->zzabw:Lcom/google/android/gms/cast/internal/Logger;

    .line 5
    invoke-virtual {p0, p3}, Lcom/google/android/gms/cast/internal/zzk;->setSessionLabel(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getNamespace()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzk;->zzabx:Ljava/lang/String;

    return-object v0
.end method

.method public final setSessionLabel(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzk;->zzabw:Lcom/google/android/gms/cast/internal/Logger;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/internal/Logger;->zzae(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/cast/internal/zzan;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzk;->zzaby:Lcom/google/android/gms/cast/internal/zzan;

    if-nez p1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/zzk;->zzet()V

    :cond_0
    return-void
.end method

.method protected final zza(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 15
    iget-object p4, p0, Lcom/google/android/gms/cast/internal/zzk;->zzabw:Lcom/google/android/gms/cast/internal/Logger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "Sending text message: %s to: %s"

    invoke-virtual {p4, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzk;->zzaby:Lcom/google/android/gms/cast/internal/zzan;

    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzk;->zzabx:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v4, p1

    move-wide v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/cast/internal/zzan;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public zzb(JI)V
    .locals 0

    return-void
.end method

.method public zzet()V
    .locals 0

    return-void
.end method

.method protected final zzev()J
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzk;->zzaby:Lcom/google/android/gms/cast/internal/zzan;

    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzan;->zzv()J

    move-result-wide v0

    return-wide v0
.end method

.method public zzz(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
