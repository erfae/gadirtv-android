.class public Lcom/google/vr/sdk/widgets/video/deps/of$c;
.super Ljava/io/IOException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/of;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/vr/sdk/widgets/video/deps/nv;


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lcom/google/vr/sdk/widgets/video/deps/nv;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 6
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/of$c;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 7
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/of$c;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/nv;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/of$c;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 3
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/of$c;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/vr/sdk/widgets/video/deps/nv;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/of$c;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 11
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/of$c;->a:I

    return-void
.end method
