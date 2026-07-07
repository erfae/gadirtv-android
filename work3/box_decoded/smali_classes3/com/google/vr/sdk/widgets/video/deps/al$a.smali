.class Lcom/google/vr/sdk/widgets/video/deps/al$a;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/al;


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/al;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/al;Lcom/google/vr/sdk/widgets/video/deps/al$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/al$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/al;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 6

    const/4 v0, -0x3

    const/16 v1, 0x26

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown focus change type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Lcom/google/vr/sdk/widgets/video/deps/al;I)I

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Lcom/google/vr/sdk/widgets/video/deps/al;I)I

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Lcom/google/vr/sdk/widgets/video/deps/al;I)I

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Lcom/google/vr/sdk/widgets/video/deps/al;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Lcom/google/vr/sdk/widgets/video/deps/al;I)I

    goto :goto_0

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Lcom/google/vr/sdk/widgets/video/deps/al;I)I

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/al;->b(Lcom/google/vr/sdk/widgets/video/deps/al;)I

    move-result p1

    if-eq p1, v4, :cond_8

    if-eqz p1, :cond_9

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_5

    goto :goto_1

    .line 25
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/al;->b(Lcom/google/vr/sdk/widgets/video/deps/al;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown audio focus state: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/al;->c(Lcom/google/vr/sdk/widgets/video/deps/al;)Lcom/google/vr/sdk/widgets/video/deps/al$b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/al$b;->b(I)V

    goto :goto_1

    .line 23
    :cond_7
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/al;->c(Lcom/google/vr/sdk/widgets/video/deps/al;)Lcom/google/vr/sdk/widgets/video/deps/al$b;

    move-result-object p1

    invoke-interface {p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/al$b;->b(I)V

    goto :goto_1

    .line 17
    :cond_8
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/al;->c(Lcom/google/vr/sdk/widgets/video/deps/al;)Lcom/google/vr/sdk/widgets/video/deps/al$b;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/al$b;->b(I)V

    .line 18
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Lcom/google/vr/sdk/widgets/video/deps/al;Z)V

    .line 26
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/al;->b(Lcom/google/vr/sdk/widgets/video/deps/al;)I

    move-result p1

    if-ne p1, v2, :cond_a

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_2

    :cond_a
    const/high16 p1, 0x3f800000    # 1.0f

    .line 29
    :goto_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/al;->d(Lcom/google/vr/sdk/widgets/video/deps/al;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/al;->a(Lcom/google/vr/sdk/widgets/video/deps/al;F)F

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/al$a;->a:Lcom/google/vr/sdk/widgets/video/deps/al;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/al;->c(Lcom/google/vr/sdk/widgets/video/deps/al;)Lcom/google/vr/sdk/widgets/video/deps/al$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/al$b;->a(F)V

    :cond_b
    return-void
.end method
