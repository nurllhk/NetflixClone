# Netflix Clone

<br>

<table>
  <tr>
    <td>
      <img src="https://github.com/nurllhk/NetflixClone/assets/79688257/116fda1d-47a7-4ffb-98ee-cf760120871d" alt="Resim 1" style="max-width: 100%;" />
    </td>
    <td>
      <img src="https://github.com/nurllhk/NetflixClone/assets/79688257/89d24032-325c-40d4-83ca-43a6b32a50a5" alt="Resim 2" style="max-width: 100%;" />
    </td>
  </tr>
</table>



<br>







https://github.com/nurllhk/NetflixClone/assets/79688257/0be90490-b328-44ac-94cb-2e7d4ad1eb02










# packages used

```sh

  lottie: ^2.4.0

 ```
<br>

# Album card

```sh 
SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .6,
      child: Stack(
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            child: Image(
              image: AssetImage(imagename),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0), Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: Palet.pagePadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.add), Text(DefaultKey.list)],
                  ),
                  Container(
                    padding: Palet.cardPadding,
                    decoration: BoxDecoration(
                        borderRadius: Palet.cardBorder,
                        color: Colors.white),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.play_arrow_sharp,
                          color: Palet.iconColor,
                        ),
                        Text(
                          DefaultKey.play,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Palet.iconColor),
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.info), Text(DefaultKey.info)],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
 
 ```

