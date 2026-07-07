.class public final Lcom/google/vr/sdk/widgets/video/deps/lv;
.super Lcom/google/vr/sdk/widgets/video/deps/lx;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/lv$a;,
        Lcom/google/vr/sdk/widgets/video/deps/lv$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/pd;

.field private final c:I

.field private final d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/li;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/li;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

.field private i:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lx;-><init>()V

    .line 2
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 3
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-direct {p2}, Lcom/google/vr/sdk/widgets/video/deps/pd;-><init>()V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 4
    :cond_0
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->c:I

    const/16 p1, 0x8

    new-array p2, p1, [Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    invoke-direct {v2}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    .line 10
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lv;->p()V

    return-void
.end method

.method private a(I)V
    .locals 4

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x11

    const-string v2, "Cea708Decoder"

    if-lt p1, v1, :cond_0

    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    const/16 v1, 0x37

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    const/16 v1, 0x1f

    if-lt p1, v0, :cond_1

    if-gt p1, v1, :cond_1

    const/16 v0, 0x36

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid C0 command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :pswitch_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lv;->p()V

    goto :goto_0

    .line 110
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->f()V

    goto :goto_0

    .line 108
    :cond_3
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lv;->o()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->f:Ljava/util/List;

    :cond_4
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b(I)V
    .locals 4

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x1f

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid C1 command: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_1
    add-int/lit16 p1, p1, -0x98

    .line 178
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/lv;->i(I)V

    .line 179
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->i:I

    if-eq v0, p1, :cond_9

    .line 180
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->i:I

    .line 181
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    goto/16 :goto_5

    .line 173
    :pswitch_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->d()Z

    move-result p1

    if-nez p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    goto/16 :goto_5

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lv;->n()V

    goto/16 :goto_5

    .line 169
    :pswitch_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->d()Z

    move-result p1

    if-nez p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    goto/16 :goto_5

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lv;->m()V

    goto/16 :goto_5

    .line 165
    :pswitch_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 166
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    goto/16 :goto_5

    .line 167
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lv;->l()V

    goto/16 :goto_5

    .line 161
    :pswitch_5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->d()Z

    move-result p1

    if-nez p1, :cond_3

    .line 162
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    goto/16 :goto_5

    .line 163
    :cond_3
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lv;->k()V

    goto/16 :goto_5

    .line 159
    :pswitch_6
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lv;->p()V

    goto/16 :goto_5

    .line 156
    :pswitch_7
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    goto/16 :goto_5

    :goto_0
    :pswitch_8
    if-gt v2, v1, :cond_9

    .line 152
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 153
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->b()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_9
    const/4 p1, 0x1

    :goto_1
    if-gt p1, v1, :cond_9

    .line 146
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    .line 148
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->e()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(Z)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :goto_2
    :pswitch_a
    if-gt v2, v1, :cond_9

    .line 141
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 142
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(Z)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_b
    const/4 p1, 0x1

    :goto_3
    if-gt p1, v1, :cond_9

    .line 136
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(Z)V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :goto_4
    :pswitch_c
    if-gt v2, v1, :cond_9

    .line 131
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 132
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->c()V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :pswitch_d
    add-int/lit8 p1, p1, -0x80

    .line 127
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->i:I

    if-eq v0, p1, :cond_9

    .line 128
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->i:I

    .line 129
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    :cond_9
    :goto_5
    :pswitch_e
    return-void

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private c(I)V
    .locals 1

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 186
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    .line 188
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    .line 190
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private d(I)V
    .locals 1

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 193
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    .line 195
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    .line 197
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 198
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result p1

    .line 199
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private e(I)V
    .locals 1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 202
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x266b

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    :goto_0
    return-void
.end method

.method private f(I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    return-void
.end method

.method private g(I)V
    .locals 2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_9

    const/16 v0, 0x21

    if-eq p1, v0, :cond_8

    const/16 v1, 0x25

    if-eq p1, v1, :cond_7

    const/16 v1, 0x2a

    if-eq p1, v1, :cond_6

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_5

    const/16 v1, 0x3f

    if-eq p1, v1, :cond_4

    const/16 v1, 0x39

    if-eq p1, v1, :cond_3

    const/16 v1, 0x3a

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3c

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3d

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid G2 character: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 258
    :pswitch_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x250c

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto/16 :goto_0

    .line 256
    :pswitch_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x2518

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto/16 :goto_0

    .line 254
    :pswitch_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x2500

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto/16 :goto_0

    .line 252
    :pswitch_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x2514

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto/16 :goto_0

    .line 250
    :pswitch_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x2510

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto/16 :goto_0

    .line 248
    :pswitch_5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x2502

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto/16 :goto_0

    .line 246
    :pswitch_6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x215e

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto/16 :goto_0

    .line 244
    :pswitch_7
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x215d

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto/16 :goto_0

    .line 242
    :pswitch_8
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x215c

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto/16 :goto_0

    .line 240
    :pswitch_9
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x215b

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto/16 :goto_0

    .line 228
    :pswitch_a
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x2022

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto/16 :goto_0

    .line 226
    :pswitch_b
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x201d

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto/16 :goto_0

    .line 224
    :pswitch_c
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x201c

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto/16 :goto_0

    .line 222
    :pswitch_d
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x2019

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    .line 220
    :pswitch_e
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x2018

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    .line 218
    :pswitch_f
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x2588

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x2120

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x153

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x161

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    .line 230
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x2122

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    .line 238
    :cond_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x178

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    .line 216
    :cond_5
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x152

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    .line 214
    :cond_6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x160

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    .line 212
    :cond_7
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x2026

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    .line 210
    :cond_8
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    .line 208
    :cond_9
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h(I)V
    .locals 2

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 263
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x33c4

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid G3 character: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(C)V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lv;->j()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    return-void
.end method

.method private i(I)V
    .locals 14

    .line 318
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    aget-object v1, v0, p1

    .line 319
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 320
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v2

    .line 321
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v3

    .line 322
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v4

    .line 323
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result p1

    .line 324
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v6

    .line 325
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v7

    .line 326
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v8

    .line 327
    iget-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v11

    .line 328
    iget-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v9

    .line 329
    iget-object v10, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v10, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 330
    iget-object v10, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v10

    .line 331
    iget-object v12, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v12, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 332
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v12

    .line 333
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v13

    move v5, p1

    .line 334
    invoke-virtual/range {v1 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(ZZZIZIIIIIII)V

    return-void
.end method

.method private j()V
    .locals 10

    .line 59
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->d:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->b:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const-string v4, "Cea708Decoder"

    if-eq v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->b:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->d:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->a:I

    const/16 v3, 0x83

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but current index is "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (sequence number "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "); ignoring packet"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->c:[B

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    iget v5, v5, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->d:I

    invoke-virtual {v0, v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a([BI)V

    .line 63
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v1

    const/4 v5, 0x7

    if-ne v0, v5, :cond_1

    .line 66
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v5, v2}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 67
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    const/16 v1, 0x3b

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "serviceNumber is non-zero ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when blockSize is 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 72
    :cond_3
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->c:I

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a()I

    move-result v1

    if-lez v1, :cond_e

    .line 76
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v1

    const/16 v5, 0x10

    const/16 v6, 0xff

    const/16 v7, 0x9f

    const/16 v8, 0x7f

    const/16 v9, 0x1f

    if-eq v1, v5, :cond_9

    if-gt v1, v9, :cond_5

    .line 79
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/lv;->a(I)V

    goto :goto_0

    :cond_5
    if-gt v1, v8, :cond_6

    .line 81
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/lv;->e(I)V

    goto :goto_1

    :cond_6
    if-gt v1, v7, :cond_7

    .line 84
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/lv;->b(I)V

    goto :goto_1

    :cond_7
    if-gt v1, v6, :cond_8

    .line 87
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/lv;->f(I)V

    goto :goto_1

    :cond_8
    const/16 v2, 0x21

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid base command: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_9
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v1

    if-gt v1, v9, :cond_a

    .line 92
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/lv;->c(I)V

    goto :goto_0

    :cond_a
    if-gt v1, v8, :cond_b

    .line 94
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/lv;->g(I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_b
    if-gt v1, v7, :cond_c

    .line 97
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/lv;->d(I)V

    goto :goto_0

    :cond_c
    if-gt v1, v6, :cond_d

    .line 99
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/lv;->h(I)V

    goto :goto_1

    :cond_d
    const/16 v2, 0x25

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid extended command: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    if-eqz v0, :cond_f

    .line 104
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lv;->o()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->f:Ljava/util/List;

    :cond_f
    return-void
.end method

.method private k()V
    .locals 10

    .line 267
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v3

    .line 268
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v4

    .line 269
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v5

    .line 270
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v6

    .line 271
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v7

    .line 272
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v8

    .line 273
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v9

    .line 274
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    invoke-virtual/range {v2 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(IIIZZII)V

    return-void
.end method

.method private l()V
    .locals 6

    .line 276
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v0

    .line 277
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v2

    .line 278
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v3

    .line 279
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v4

    .line 280
    invoke-static {v2, v3, v4, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(IIII)I

    move-result v0

    .line 281
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v2

    .line 282
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v3

    .line 283
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v4

    .line 284
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v5

    .line 285
    invoke-static {v3, v4, v5, v2}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(IIII)I

    move-result v2

    .line 286
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 287
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v3

    .line 288
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v4

    .line 289
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v1

    .line 290
    invoke-static {v3, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->b(III)I

    move-result v1

    .line 291
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(III)V

    return-void
.end method

.method private m()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 294
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v0

    .line 295
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 296
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v1

    .line 297
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    invoke-virtual {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(II)V

    return-void
.end method

.method private n()V
    .locals 13

    .line 299
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v0

    .line 300
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v2

    .line 301
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v3

    .line 302
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v4

    .line 303
    invoke-static {v2, v3, v4, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(IIII)I

    move-result v6

    .line 304
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v0

    .line 305
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v2

    .line 306
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v3

    .line 307
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v4

    .line 308
    invoke-static {v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->b(III)I

    move-result v7

    .line 309
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    move v9, v0

    .line 311
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v8

    .line 312
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v10

    .line 313
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v11

    .line 314
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v12

    .line 315
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 316
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    invoke-virtual/range {v5 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a(IIZIIII)V

    return-void
.end method

.method private o()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/li;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->h()Lcom/google/vr/sdk/widgets/video/deps/lu;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 342
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/lv$a;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(J)V
    .locals 0

    .line 351
    invoke-super {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lx;->a(J)V

    return-void
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/lp;)V
    .locals 7

    .line 23
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/lp;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/lp;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    .line 25
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_8

    .line 26
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 29
    :goto_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v2

    int-to-byte v2, v2

    .line 30
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v5

    int-to-byte v5, v5

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_5

    .line 36
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lv;->i()V

    and-int/lit16 p1, v2, 0xc0

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 v0, v2, 0x3f

    if-nez v0, :cond_4

    const/16 v0, 0x40

    .line 41
    :cond_4
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    invoke-direct {v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lv$b;-><init>(II)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    .line 42
    iget-object p1, v1, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->c:[B

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->d:I

    aput-byte v5, p1, v1

    goto :goto_2

    :cond_5
    if-ne v1, v6, :cond_6

    const/4 v3, 0x1

    .line 44
    :cond_6
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 45
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    if-nez p1, :cond_7

    const-string p1, "Cea708Decoder"

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    .line 46
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_7
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->c:[B

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->d:I

    aput-byte v2, p1, v1

    .line 49
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->c:[B

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->d:I

    aput-byte v5, p1, v1

    .line 50
    :goto_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->d:I

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/lv$b;->b:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lv;->i()V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public bridge synthetic b(Lcom/google/vr/sdk/widgets/video/deps/lp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 349
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/lx;->b(Lcom/google/vr/sdk/widgets/video/deps/lp;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 12
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/lx;->c()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->f:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->g:Ljava/util/List;

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->i:I

    .line 16
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->d:[Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->e:Lcom/google/vr/sdk/widgets/video/deps/lv$a;

    .line 17
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/lv;->p()V

    .line 18
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->h:Lcom/google/vr/sdk/widgets/video/deps/lv$b;

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .line 347
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/lx;->d()V

    return-void
.end method

.method protected e()Z
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->g:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected f()Lcom/google/vr/sdk/widgets/video/deps/ll;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/lv;->g:Ljava/util/List;

    .line 22
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ly;

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ly;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic g()Lcom/google/vr/sdk/widgets/video/deps/lq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 348
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/lx;->g()Lcom/google/vr/sdk/widgets/video/deps/lq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lcom/google/vr/sdk/widgets/video/deps/lp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 350
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/lx;->h()Lcom/google/vr/sdk/widgets/video/deps/lp;

    move-result-object v0

    return-object v0
.end method
