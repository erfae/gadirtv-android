.class public final Lcom/google/vr/sdk/widgets/video/deps/da$b;
.super Ljava/lang/Object;
.source "SeekMap.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/da;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/da$a;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/da$b;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da$b;->a:J

    .line 5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    .line 6
    sget-object p2, Lcom/google/vr/sdk/widgets/video/deps/db;->a:Lcom/google/vr/sdk/widgets/video/deps/db;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-direct {p2, v0, v1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/db;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da$b;->b:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/da$a;
    .locals 0

    .line 10
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/da$b;->b:Lcom/google/vr/sdk/widgets/video/deps/da$a;

    return-object p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/da$b;->a:J

    return-wide v0
.end method
